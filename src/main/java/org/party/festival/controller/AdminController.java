package org.party.festival.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import lombok.extern.slf4j.Slf4j;
import org.party.festival.service.WebsiteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.party.festival.bean.Website;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.security.Key;

@RequestMapping("/admin")
@RestController
@Slf4j
public class AdminController {

	@Autowired
	private ServletContext context;

	@Autowired
	private WebsiteService websiteService;

	@Autowired
	private Environment environment;


	@RequestMapping(value = "/sync", method = RequestMethod.POST)
	public synchronized ResponseEntity<String> sync(@RequestBody Website website, HttpServletRequest request) throws FileNotFoundException, JsonProcessingException {

		String bearer = request.getHeader("authorization");

		checkValidity(bearer);

		log.info("Received sync request for {}", website);
		
		log.info("Contains {} speakers", website.getSpeakers().size());
		log.info("Contains {} themes", website.getThemes().size());
		log.info("Contains {} abouts", website.getAbouts().size());
		log.info("Contains {} carousel items", website.getCarouselItems().size());
		log.info("Contains {} culture items", website.getCultureItems().size());
		log.info("Website {}", website);

		context.setAttribute("website", website);

		websiteService.saveWebsiteToFileSystem( website );

		return new ResponseEntity<>("All Good!", HttpStatus.OK);
	}

	private void checkValidity(String bearer) {
		log.debug("authorization = {}", bearer);

		String password = environment.getProperty("jws.key");

		Key key = Keys.hmacShaKeyFor(password.getBytes());

		bearer = bearer.replace("Bearer ", "");

		//throws exception if not valid
		Jws<Claims> jws = Jwts.parser()
				.setSigningKey(key)
				.parseClaimsJws(bearer);
	}
}
