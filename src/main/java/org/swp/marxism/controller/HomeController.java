package org.swp.marxism.controller;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.swp.marxism.controller.command.ContactForm;
import org.swp.marxism.domain.Booking;
import org.swp.marxism.repository.BookingRepository;

@Controller("/")
public class HomeController {

	@Autowired
	private BookingRepository bookingRepository;

	@Autowired
	private JavaMailSender mailSender;

	@Value("${marxism.email.to}")
	private String emailTo;

	protected static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {

		logger.info("Received request for home");

		model.addAttribute(new Booking());

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

		if (bindingResult.hasErrors()) {
			logger.info("Failed validation {}", bindingResult);

			model.addAttribute(booking);

			return "book.html";
		}

		logger.info("Passed validation, persisting");

		bookingRepository.save(booking);

		logger.info("Booking persisted. Rendering confirmation page");

		model.addAttribute(booking);

		return "confirm_booking.html";
	}

	@RequestMapping(value = "/sendEmail", method = RequestMethod.POST)
	@ResponseBody
	public String sendEmail(@Valid ContactForm contactForm, BindingResult bindingResult, Model model) {

		logger.info("Received post request for sendEmail {}", contactForm);

		if (bindingResult.hasErrors()) {
			logger.info("Failed validation {}", bindingResult);

			return "error";
		}

		logger.info("Passed validation, sending email to {}", emailTo);

		try {

			final MimeMessage mimeMessage = this.mailSender.createMimeMessage();

			MimeMessageHelper message = new MimeMessageHelper(mimeMessage, true, "UTF-8");

			message.setSubject("Someone has contacted us using the marxism website.");

			message.setFrom(contactForm.getEmail());

			message.setTo(emailTo);

			message.setText(contactForm.getMessage(), false);

			this.mailSender.send(mimeMessage);

		} catch (MessagingException e) {
			logger.error("Cannot send email", e);
			return "error";
		}

		return "success";
	}
}
