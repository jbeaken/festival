package org.swp.marxism.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.swp.marxism.domain.MarxismWebsite;

import javax.servlet.ServletContext;

@RequestMapping("/admin")
@RestController
@Slf4j
public class AdminController {

	@Autowired
	private ServletContext context;

	@RequestMapping(value = "/sync", method = RequestMethod.POST)
	@ResponseBody
	public String sync(@RequestBody MarxismWebsite marxismWebsite) throws JsonProcessingException {
		
		log.info("Received sync request for {}", marxismWebsite);
		
		log.info("Contains {} speakers", marxismWebsite.getSpeakers().size());
		log.info("Contains {} themes", marxismWebsite.getThemes().size());
		log.info("Contains {} abouts", marxismWebsite.getAbouts().size());
		log.info("Contains {} carousel items", marxismWebsite.getCarouselItems().size());
		log.info("Contains {} culture items", marxismWebsite.getCultureItems().size());

		context.setAttribute("marxismWebsite", marxismWebsite);


		return "blah";
	}
}
