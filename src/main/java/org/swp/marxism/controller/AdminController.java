package org.swp.marxism.controller;

import java.util.Collection;
import java.util.List;

import javax.servlet.ServletContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.swp.marxism.controller.bean.MarxismWebsiteHolder;
import org.swp.marxism.domain.MarxismWebsite;
import org.swp.marxism.domain.Meeting;
import org.swp.marxism.repository.MarxismWebsiteRepository;
import org.swp.marxism.repository.MeetingRepository;
import org.swp.marxism.repository.VenueRepository;
import org.swp.marxism.util.HtmlBuilder;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@RequestMapping("/admin")
@RestController
public class AdminController {

	@Autowired
	private MarxismWebsiteRepository marxismWebsiteRepository;
	
	@Autowired
	private MeetingRepository meetingRepository;
	
	@Autowired
	private VenueRepository venueRepository;	

	@Autowired
	private HtmlBuilder htmlBuilder;

	@Autowired
	private ServletContext context;

	protected static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@RequestMapping(value = "/sync", method = RequestMethod.POST)
	@ResponseBody
	public String sync(@RequestBody MarxismWebsiteHolder marxismWebsiteHolder) throws JsonProcessingException {
		
		logger.info("Received sync request for {}", marxismWebsiteHolder);
		
		MarxismWebsite marxismWebsite = marxismWebsiteHolder.getMarxismWebsite();
				
		logger.info("Contains {} speakers", marxismWebsite.getSpeakers().size());
		logger.info("Contains {} themes", marxismWebsite.getThemes().size());
		logger.info("Contains {} abouts", marxismWebsite.getAbouts().size());
		logger.info("Contains {} carousel items", marxismWebsite.getCarouselItems().size());
		logger.info("Contains {} culture items", marxismWebsite.getCultureItems().size());
		logger.info("Contains {} meetings", marxismWebsiteHolder.getMeetings().size());
		logger.info("Contains {} venues", marxismWebsiteHolder.getVenues().size());
		
		
		marxismWebsiteRepository.save( marxismWebsite );
		
		if(logger.isDebugEnabled()) {
			for(Meeting m : marxismWebsiteHolder.getMeetings()) {
				logger.debug("Saving meeting {}", m);
			}
		}
		
		meetingRepository.deleteAll();
		
		meetingRepository.flush();
		
		meetingRepository.saveAll(marxismWebsiteHolder.getMeetings());
		
//		venueRepository.saveAll(marxismWebsiteHolder.getVenues());
		
		refresh();
		
		return "blah";
	}
	
	@RequestMapping(value = "/refresh", method = RequestMethod.GET)
	public String refresh() throws JsonProcessingException {

		logger.info("Received request for refresh");

		MarxismWebsite marxismWebsite = marxismWebsiteRepository.findByIsLive( true );
		Iterable<Meeting> meetings = meetingRepository.findAll();

		logger.info("Have loaded marxism website content {}", marxismWebsite);

		logger.info("Contains {} speakers", marxismWebsite.getSpeakers().size());
		logger.info("Contains {} themes", marxismWebsite.getThemes().size());
		logger.info("Contains {} abouts", marxismWebsite.getAbouts().size());
		logger.info("Contains {} carousel items", marxismWebsite.getCarouselItems().size());
		logger.info("Contains {} culture items", marxismWebsite.getCultureItems().size());

		logger.info("Building meetings json..");
		htmlBuilder.buildMeetings( marxismWebsite, meetings );
		
		ObjectMapper mapper = new ObjectMapper();
		
		String meetingsJson = mapper.writeValueAsString( meetings );
		
		if(logger.isTraceEnabled()) {
			logger.trace("Meetings json : {}", meetingsJson);
		}
		
		marxismWebsite.setMeetingsJson(meetingsJson);
		
		logger.info("Marxism website content placed into context");
		context.setAttribute("marxismWebsite", marxismWebsite);

		logger.info("Refreshed MarxismWebsite placed into context");

		return "success";
	}
}
