package org.swp.marxism.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.swp.marxism.domain.Booking;
import org.swp.marxism.repository.BookingRepository;

@Controller("/")
public class HomeController {
	
	@Autowired
	private BookingRepository bookingRepository;
	
	protected static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		logger.info("Received request for home");
		
		return "home.html";
	}
	
	@RequestMapping(value = "/book", method = RequestMethod.GET)
	public String book(Model model) {
		
		logger.info("Received get request for book");
		
		model.addAttribute(new Booking());
		
		return "book.html";
	}	
	
	@RequestMapping(value = "/book", method = RequestMethod.POST)
	public String book(@Valid Booking booking, BindingResult bindingResult, Model model) {
		
		logger.info("Received post request for booking {}", booking);
		 
		if(bindingResult.hasErrors()) {
			logger.info("Failed validation {}", bindingResult);
			
			model.addAttribute(booking);
			
			return "book.html";
		}
		
		logger.info("Passed validation, persisting");
		
		bookingRepository.save( booking );
		
		logger.info("Booking persisted. Rendering confirmation page");
		
		model.addAttribute(booking);
		
		return "confirm_booking.html";
	}	
}
