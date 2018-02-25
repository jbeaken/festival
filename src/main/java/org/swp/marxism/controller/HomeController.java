package org.swp.marxism.controller;

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

@Controller("/")
public class HomeController {

	@Autowired
	private BookingRepository bookingRepository;

	@Autowired
	private MarxismWebsiteContentRepository marxismWebsiteContentRepository;

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private ServletContext context;

	@Value("${marxism.email.to}")
	private String emailTo;

	protected static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {

		logger.info("Received request for home");

		MarxismWebsiteContent marxismWebsiteContent = (MarxismWebsiteContent) context.getAttribute("marxismWebsiteContent");

		if(marxismWebsiteContent == null) {

			marxismWebsiteContent = marxismWebsiteContentRepository.findByIsLive( true );

			logger.info("Have loaded marxism website content {}", marxismWebsiteContent);

			logger.info("Contains {} speakers", marxismWebsiteContent.getSpeakers().size());
			logger.info("Contains {} themes", marxismWebsiteContent.getThemes().size());
			logger.info("Contains {} carousel items", marxismWebsiteContent.getCarouselItems().size());

			context.setAttribute("marxismWebsiteContent", marxismWebsiteContent);

			logger.info("Marxism website content placed into context");
		}

		model.addAttribute("content", marxismWebsiteContent);

		return "home.html";
	}

	@RequestMapping(value = "/book", method = RequestMethod.GET)
	public String book(Model model) {

		logger.info("Received get request for book");

		model.addAttribute(new Booking());

		return "book.html";
	}

	@RequestMapping(value = "/modal/{content}", method = RequestMethod.GET)
	public String modalContent(@PathVariable String content, Model model) {

		logger.info("Received request for modal {}", content);

		return "/modal/" + content;
	}

	@RequestMapping(value = "/book", method = RequestMethod.POST)
	public String book(@Valid Booking booking, BindingResult bindingResult, Model model) {

		logger.info("Received post request for booking {}", booking);

		if (bindingResult.hasErrors()) {
			logger.info("Booking failed validation {}", bindingResult);

			model.addAttribute(booking);

			FieldError error = (FieldError) bindingResult.getAllErrors().get(0);
			String message = error.getField() + " " + error.getDefaultMessage();

			return "error.html";
		}
		
		//Sanity check
		logger.info("Checking {} equals {} ", booking.getPrice(), booking.getTicket().getWebPrice());
		String backendPrice = (booking.getPrice() * 100) + "";
		if(!backendPrice.equals(booking.getTicket().getWebPrice())) {
			throw new MarxismException("Web and backend prices do not match");
		}

		logger.info("Passed validation, persisting");
		
		bookingRepository.save(booking);

		logger.info("Booking persisted. Returning booking object");

		model.addAttribute(booking);
		model.addAttribute("amount", backendPrice);
		model.addAttribute("orderId", booking.getOrderId());

		return "barclays.html";
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
