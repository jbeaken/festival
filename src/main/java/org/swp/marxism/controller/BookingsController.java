package org.swp.marxism.controller;

import java.util.List;
import java.util.Optional;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.core.io.Resource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.swp.marxism.controller.bean.BookingResult;
import org.swp.marxism.controller.command.ContactForm;
import org.swp.marxism.domain.Booking;
import org.swp.marxism.domain.MarxismWebsiteContent;
import org.swp.marxism.exception.MarxismException;
import org.swp.marxism.repository.BookingRepository;
import org.swp.marxism.repository.MarxismWebsiteContentRepository;

@RequestMapping("/bookings")
@Controller
public class BookingsController {

	@Autowired
	private BookingRepository bookingRepository;

	protected static final Logger logger = LoggerFactory.getLogger(BookingsController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String bookings(String actioned, Model model) {

		logger.info("Received request for admin home, actioned : {}", actioned);

		List<Booking> bookings = null;

		if(actioned == null) {
			actioned = "2";	
		} 

		if(actioned.equals("1")) {
			bookings = bookingRepository.findAllByActioned( true );
		} else if(actioned.equals("2")) {
			bookings = bookingRepository.findAllByActioned( false );
		} else {
			bookings = bookingRepository.findAll();
		}

		logger.info("Retrieved {} bookings", bookings.size(), actioned);

		model.addAttribute(bookings);
		model.addAttribute("actioned", actioned);

		return "admin/bookings.html";
	}

	@RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
	public String view(@PathVariable Long id, Model model) {

		Optional<Booking> booking = bookingRepository.findById(id);

		logger.info("Request view booking {}", booking.get());

		model.addAttribute(booking);

		return "admin/view.html";
	}

	@RequestMapping(value = "/action/{isActioned}/{id}", method = RequestMethod.GET)
	public String view(@PathVariable Boolean isActioned, @PathVariable Long id, Model model) {

		logger.info("Request action booking {} {}", id, isActioned);

		bookingRepository.updateIsActioned(id, isActioned);

		return "redirect:/bookings/";
	}	

	@RequestMapping(value = "/charts", method = RequestMethod.GET)
	public String charts(Model model) {

		logger.info("Received request for admin charts");

		return "admin/charts.html";
	}
}
