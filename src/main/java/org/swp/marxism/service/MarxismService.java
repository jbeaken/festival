package org.swp.marxism.service;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;

//@Component
public class MarxismService {
	
	protected static final Logger logger = LoggerFactory.getLogger(MarxismService.class);

	@Autowired
	private Environment environment;

//	public MarxismWebsite buildWebsite() {
//
//		logger.info("MarxismWebsite is null, building...");
//
//		HtmlBuilder htmlBuilder = new HtmlBuilder();
//
//		MarxismWebsite marxismWebsite = marxismWebsiteRepository.findByIsLive(true);
//		List<Meeting> meetings = meetingRepository.findAll();
//
//		logger.info("Have loaded marxism website content {}", marxismWebsite);
//
//		logger.info("Contains {} speakers", marxismWebsite.getSpeakers().size());
//		logger.info("Contains {} themes", marxismWebsite.getThemes().size());
//		logger.info("Contains {} carousel items", marxismWebsite.getCarouselItems().size());
//		logger.info("Contains {} culture items", marxismWebsite.getCultureItems().size());
//		logger.info("Contains {} abouts", marxismWebsite.getAbouts().size());
//
//		logger.info("Building meetings json");
//
//		htmlBuilder.buildMeetings(marxismWebsite, meetings);
//
//		htmlBuilder.getDaysAndTimes(marxismWebsite, meetings );
//
//		if (environment.acceptsProfiles(Profiles.of("prod"))) {
//			marxismWebsite.setIsDev(false);
//		} else {
//			marxismWebsite.setIsDev(true);
//		}
//
//		ObjectMapper mapper = new ObjectMapper();
//
//		String meetingsJson;
//
//		try {
//			meetingsJson = mapper.writeValueAsString(meetings);
//		} catch (JsonProcessingException e) {
//			throw new MarxismException("Cannot process meetings json");
//		}
//
//		logger.trace("Meetings json : {}", meetingsJson);
//
//		marxismWebsite.setMeetingsJson(meetingsJson);
//
//		logger.info("Building readmore for themes");
//
//		htmlBuilder.buildThemes(marxismWebsite.getThemes());
//
//		logger.info("...all done!");
//
//		return marxismWebsite;
//	}
}
