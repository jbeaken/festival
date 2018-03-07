package org.swp.marxism.controller;

import java.util.List;

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
import org.swp.marxism.controller.bean.BookingResult;
import org.swp.marxism.controller.command.ContactForm;
import org.swp.marxism.domain.Booking;
import org.swp.marxism.domain.MarxismWebsiteContent;
import org.swp.marxism.exception.MarxismException;
import org.swp.marxism.repository.BookingRepository;
import org.swp.marxism.repository.MarxismWebsiteContentRepository;

@RequestMapping("/bookings")
@Controller
public class BackendController {

	@Autowired
	private BookingRepository bookingRepository;

	@Autowired
	private MarxismWebsiteContentRepository marxismWebsiteContentRepository;

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private ServletContext context;

	protected static final Logger logger = LoggerFactory.getLogger(BackendController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String bookings(Model model) {

		logger.info("Received request for admin home");

		List<Booking> bookings = bookingRepository.findAllByOrderByIdDesc();

		logger.info("Retrieved {} bookings", bookings.size());

		model.addAttribute(bookings);

		return "admin/bookings.html";
	}

	@RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
	public String view(@PathVariable Long id, Model model) {

		logger.info("Received request for view {}", id);

		Booking booking = bookingRepository.findOne(id);

		logger.info("Found booking {}", booking);

		model.addAttribute(booking);

		return "admin/view.html";
	}

	@RequestMapping(value = "/charts", method = RequestMethod.GET)
	public String charts(Model model) {

		logger.info("Received request for admin charts");

		List<Booking> bookings = bookingRepository.findAll();

		logger.info("Retrieved {} bookings", bookings.size());

		model.addAttribute(bookings);

		return "admin/charts.html";
	}
}
