package org.swp.marxism.controller;

import java.security.NoSuchAlgorithmException;
import java.util.Optional;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.swp.marxism.controller.bean.Feedback;
import org.swp.marxism.controller.command.ContactForm;
import org.swp.marxism.domain.Booking;
import org.swp.marxism.domain.BookingStatus;
import org.swp.marxism.domain.MarxismWebsiteContent;
import org.swp.marxism.exception.MarxismException;
import org.swp.marxism.repository.BookingRepository;
import org.swp.marxism.repository.MarxismWebsiteContentRepository;
import org.thymeleaf.context.Context;

@Controller("/")
public class HomeController {

	@Autowired
	private BookingRepository bookingRepository;

	@Autowired
	private MarxismWebsiteContentRepository marxismWebsiteContentRepository;

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private Environment environment;

	@Autowired
	private ServletContext context;

	@Value("${marxism.email.to}")
	private String emailTo;

	protected static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@InitBinder("booking")
	public void initBinder(WebDataBinder binder) {
	    binder.registerCustomEditor(String.class, "accommodationNeeds", new StringTrimmerEditor(true));
	    binder.registerCustomEditor(String.class, "accommodationContact", new StringTrimmerEditor(true));
	}

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
	
	@RequestMapping(value = "/booking/details", method = RequestMethod.GET)
	public String redirectFromOldUrls(Model model) {

		logger.info("Received request from old website /booking/details");

		return "redirect:/";
	}
	
	@RequestMapping(value = "/feedback", method = RequestMethod.POST)
	public ResponseEntity<String> feedback(@RequestBody Feedback feedback, Model model) throws NoSuchAlgorithmException {

		logger.info("Received feeback {} ", feedback);
		
		Long id = Long.parseLong( feedback.getOrderid().replace("MRX", "") );
		
		logger.info("Extracted booking id {}", id);
		
		boolean shaCheck = feedback.checkSha( "435dhsgidcddT4g" );
		
		logger.info("shaCheck = {}", shaCheck);
		
		if(shaCheck == false) {
			return new ResponseEntity<String>("sha failure", HttpStatus.NOT_ACCEPTABLE);
		}
		
		Optional<Booking> optional = bookingRepository.findById( id );
		
		if(!optional.isPresent()) {
			return new ResponseEntity<String>("Cannot find booking " + id, HttpStatus.NOT_ACCEPTABLE);
		}
		
		Booking booking = optional.get();
		
		logger.info("Got booking {}", booking);
		
		if(feedback.getBarclaysStatus().equals("5")) {
			logger.info("Updating status to paid");
			bookingRepository.updateStatus(id, BookingStatus.PAID);
			try {
				sendEmail(booking);
			} catch(Exception e) {
				logger.error("Cannot send booking email", e);
			}
		};
		
		if(feedback.getBarclaysStatus().equals("1")) {
			logger.info("Updating status to cancelled");
			bookingRepository.updateStatus(id, BookingStatus.CANCELLED);
		};		

		return new ResponseEntity<String>("success", HttpStatus.OK);
	}		

	@RequestMapping(value = "/book", method = RequestMethod.GET)
	public String book(Model model) {

		logger.info("Received get request for book");

		return "redirect:/";
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
		
		Integer price = booking.getPrice();
		
		//Apply discount?
		MarxismWebsiteContent marxismWebsiteContent = (MarxismWebsiteContent) context.getAttribute("marxismWebsiteContent");
		
		logger.info("marxismWebsiteContent.getApplyTicketDiscount() : {}", marxismWebsiteContent.getApplyTicketDiscount());
		
		if(marxismWebsiteContent.getApplyTicketDiscount() == true) {
			price -= 5;
		}

		//Sanity check
		String backendPrice = (price * 100) + "";
		logger.info("Checking booking price {} equals ticket.webPrice {} ", backendPrice, booking.getTicket().getWebPrice());
		if(!backendPrice.equals(booking.getTicket().getWebPrice())) {
			throw new MarxismException("Web and backend prices do not match");
		}

		logger.info("Passed validation, persisting");

		bookingRepository.save(booking);

		logger.info("Booking persisted. All done!");

		//Create order id based on environment
		String orderId = "DEV" + booking.getId();
		if(environment.acceptsProfiles("prod")) {
			orderId = "MRX" + booking.getId();
		};
		
		logger.debug("Sending to barclays with order id {}", orderId);
		
		model.addAttribute(booking);
		model.addAttribute("amount", backendPrice);
		model.addAttribute("orderId", orderId);

		return "barclays.html";
	}
	
	@RequestMapping(value = "/thankYou", method = RequestMethod.GET)
	public String thankYou(Model model) {

		logger.info("Received thankYou");
		
		MarxismWebsiteContent marxismWebsiteContent = (MarxismWebsiteContent) context.getAttribute("marxismWebsiteContent");

		model.addAttribute("content", marxismWebsiteContent);
		
		return "home.html";
	}	

	@RequestMapping(value = "/sendEmail", method = RequestMethod.POST)
	@ResponseBody
	public String sendEmail(@Valid ContactForm contactForm, BindingResult bindingResult, Model model) {

		logger.info("Received post request for sendEmail {}", contactForm);

		if (bindingResult.hasErrors()) {
			//Should never happen, js validation
			logger.info("Failed validation {}", bindingResult);

			return "error";
		}

		logger.info("Passed validation, sending email to {}", emailTo);

		try {

			final MimeMessage mimeMessage = this.mailSender.createMimeMessage();

			MimeMessageHelper message = new MimeMessageHelper(mimeMessage, true, "UTF-8");

			message.setSubject("Someone has contacted us using the Marxism website.");

			message.setFrom(contactForm.getEmail());

			message.setTo(emailTo);
			
			message.setBcc("jack747@gmail.com");
			
			StringBuilder builder = new StringBuilder();
			builder.append("Name : " + contactForm.getName() + "<br/>");
			builder.append("Email : " + contactForm.getEmail() + "<br/>");
			builder.append("Message : " + contactForm.getMessage() + "<br/>");
			

			message.setText(builder.toString(), true);

			this.mailSender.send(mimeMessage);

		} catch (MessagingException e) {
			logger.error("Cannot send email", e);
			return "error";
		}

		return "success";
	}
	
	private void sendEmail(Booking booking) throws MessagingException {
		
		logger.info("Sending booking confirmation");
		
		final Context ctx = new Context();
		ctx.setVariable("booking", booking);

		final MimeMessage mimeMessage = this.mailSender.createMimeMessage();
		final MimeMessageHelper message = new MimeMessageHelper(mimeMessage, false, "UTF-8");

		// BCC depending on profile
		String[] profiles = environment.getActiveProfiles();

//		if (profiles[0].equals("default") || profiles[0].equals("test")) {
			// For test and dev
			message.setTo(booking.getEmail());
			message.setBcc("jack747@gmail.com");
			message.setSubject("Your Marxism Booking Confirmation");
			message.setFrom("info@marxismfestival.org.uk");
//		} else {
//			message.setSubject("Marxism Booking");
//			message.setBcc("info@marxismfestival.org.uk");
//			message.setFrom("info@marxismfestival.org.uk");
//			message.setTo(booking.getEmail());
//		}

		// Create the HTML body using Thymeleaf
		String html = "<h1>Thank you for booking a ticket for Marxism Festival 2018.</h1><p>Your ticket will be sent out to you in the post in June.</p><p>Marxism Festival starts at 12 noon on Thurs 5 July and finishes at 6.30pm on Sun 8 July.</p>";
		html += "<p>If you need any more information please get in touch with us on info@marxismfestival.org.uk or call 020 7840 5620.</p>";
		html += "<br/><p>Please quote booking number " + booking.getId() + "</p>";

		message.setText(html, true); // true = isHtml

		this.mailSender.send(mimeMessage);

		logger.info("Mail successfuly sent!");
	}
	

}
