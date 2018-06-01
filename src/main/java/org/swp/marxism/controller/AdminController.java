package org.swp.marxism.controller;

import javax.servlet.ServletContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.swp.marxism.domain.MarxismWebsite;
import org.swp.marxism.repository.MarxismWebsiteRepository;
import org.swp.marxism.util.HtmlBuilder;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@RequestMapping("/admin")
@RestController
public class AdminController {

	@Autowired
	private MarxismWebsiteRepository marxismWebsiteRepository;

	@Autowired
	private HtmlBuilder htmlBuilder;

	@Autowired
	private ServletContext context;

	protected static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@RequestMapping(value = "/refresh", method = RequestMethod.GET)
	public String home(Model model) throws JsonProcessingException {

		logger.info("Received request for refresh");

		MarxismWebsite marxismWebsite = marxismWebsiteRepository.findByIsLive( true );

		logger.info("Have loaded marxism website content {}", marxismWebsite);

		logger.info("Contains {} speakers", marxismWebsite.getSpeakers().size());
		logger.info("Contains {} themes", marxismWebsite.getThemes().size());
		logger.info("Contains {} carousel items", marxismWebsite.getCarouselItems().size());
		logger.info("Contains {} carousel items", marxismWebsite.getMeetings().size());

		logger.info("Building meetings json from ");
		htmlBuilder.buildMeetings( marxismWebsite.getMeetings() );
		
		ObjectMapper mapper = new ObjectMapper();
		
		String meetingsJson = mapper.writeValueAsString(marxismWebsite.getMeetings());
		
		logger.debug("Meetings json : {}", meetingsJson);
		
		marxismWebsite.setMeetingsJson(meetingsJson);
		marxismWebsite.setMeetings(null);
		
		logger.info("Marxism website content placed into context");
		context.setAttribute("marxismWebsite", marxismWebsite);

		logger.info("Refreshed MarxismWebsite placed into context");

		return "success";
	}
}
