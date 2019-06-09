package org.party.festival.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.party.festival.domain.Website;

import javax.servlet.ServletContext;
import java.io.FileNotFoundException;
import java.io.PrintWriter;

@RequestMapping("/admin")
@RestController
@Slf4j
public class AdminController {

	@Autowired
	private ServletContext context;

	@RequestMapping(value = "/sync", method = RequestMethod.POST)
	public synchronized ResponseEntity<String> sync(@RequestBody Website website) throws FileNotFoundException, JsonProcessingException {
		
		log.info("Received sync request for {}", website);
		
		log.info("Contains {} speakers", website.getSpeakers().size());
		log.info("Contains {} themes", website.getThemes().size());
		log.info("Contains {} abouts", website.getAbouts().size());
		log.info("Contains {} carousel items", website.getCarouselItems().size());
		log.info("Contains {} culture items", website.getCultureItems().size());
		log.info("Marxism Website {}", website);

		context.setAttribute("website", website);

		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(website);

		try (PrintWriter out = new PrintWriter("website.json")) {
			log.info("Saving json to file....");
			log.debug(json);
			out.write( json);
			log.info("...successful!");
		}

		return new ResponseEntity<>("All Good!", HttpStatus.OK);
	}
}
