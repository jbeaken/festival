package org.swp.marxism.controller;

import java.io.InputStream;
import java.io.OutputStream;
import java.security.NoSuchAlgorithmException;
import java.util.Optional;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.context.ApplicationContext;
import org.springframework.core.env.Environment;
import org.springframework.core.io.Resource;
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
import org.swp.marxism.domain.MarxismWebsite;
import org.swp.marxism.domain.Meeting;
import org.swp.marxism.exception.MarxismException;
import org.swp.marxism.repository.BookingRepository;
import org.swp.marxism.repository.MarxismWebsiteRepository;
import org.swp.marxism.util.HtmlBuilder;
import org.thymeleaf.context.Context;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller("/")
public class HomeController {

	@Autowired
	private BookingRepository bookingRepository;

	@Autowired
	private MarxismWebsiteRepository marxismWebsiteRepository;

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private Environment environment;

	@Autowired
	private ServletContext context;
	
	@Autowired
<<<<<<< HEAD
	private ApplicationContext appContext;
=======
	private HtmlBuilder htmlBuilder;
>>>>>>> 283b682... HtmlBuilder bean now used rather than entity or javascript

	@Value("${marxism.email.to}")
	private String emailTo;

	protected static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@InitBinder("booking")
	public void initBinder(WebDataBinder binder) {
	    binder.registerCustomEditor(String.class, "accommodationNeeds", new StringTrimmerEditor(true));
	    binder.registerCustomEditor(String.class, "accommodationContact", new StringTrimmerEditor(true));
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) throws JsonProcessingException {

		logger.info("Received request for home");

<<<<<<< HEAD
		MarxismWebsite marxismWebsite = (MarxismWebsite) context.getAttribute("marxismWebsite");

		if(marxismWebsite == null) {

			marxismWebsite = marxismWebsiteRepository.findByIsLive( true );

			logger.info("Have loaded marxism website content {}", marxismWebsite);

			logger.info("Contains {} speakers", marxismWebsite.getSpeakers().size());
			logger.info("Contains {} themes", marxismWebsite.getThemes().size());
			logger.info("Contains {} carousel items", marxismWebsite.getCarouselItems().size());
			logger.info("Contains {} carousel items", marxismWebsite.getMeetings().size());

			logger.info("Marxism website content placed into context");
			
			logger.info("Building meetings json from ");
			for(Meeting m : marxismWebsite.getMeetings()) {
				htmlBuilder.build( m );
			}
			
			ObjectMapper mapper = new ObjectMapper();
			
			String meetingsJson = mapper.writeValueAsString(marxismWebsite.getMeetings());
			
			logger.debug("Meetings json : {}", meetingsJson);
			
			marxismWebsite.setMeetingsJson(meetingsJson);
			
			context.setAttribute("marxismWebsite", marxismWebsite);
		}
=======
		MarxismWebsite marxismWebsite = getMarxismWebsite();
>>>>>>> d9a4772... Themes now ready to show meetings, speakers.sql added

		model.addAttribute("content", marxismWebsite);

		return "home.html";
	}
	
	@RequestMapping(value = "/timetable", method = RequestMethod.GET)
	public void downloadTimetablePDF(HttpServletResponse response) throws java.io.IOException {

		Resource resource = appContext.getResource("file:/home/marxism/pdf/timetable.pdf");

		InputStream is = resource.getInputStream();

		response.setContentType("application/pdf");

		response.setHeader("Content-Disposition", "attachment; filename=\"marxism2018.pdf\"");

		OutputStream os = response.getOutputStream();

		IOUtils.copy(is, os);
		os.flush();
		os.close();
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
	public String book(Model model) throws JsonProcessingException {

	  logger.info("Received get request for book");

	  MarxismWebsite marxismWebsite = getMarxismWebsite();

	  model.addAttribute("content", marxismWebsite);
	  model.addAttribute("showBookingForm", Boolean.TRUE);

	  return "home.html";
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
		MarxismWebsite marxismWebsite = (MarxismWebsite) context.getAttribute("marxismWebsite");
		
		logger.info("marxismWebsite.getApplyTicketDiscount() : {}", marxismWebsite.getApplyTicketDiscount());
		
		if(marxismWebsite.getApplyTicketDiscount() == true) {
			price -= 5;
		}

		//Sanity check
		String backendPrice = (price * 100) + "";
		logger.info("Checking booking price {} equals ticket.webPrice {} ", backendPrice, booking.getTicket().getWebPrice());
//		if(!backendPrice.equals(booking.getTicket().getWebPrice())) {
//			throw new MarxismException("Web and backend prices do not match");
//		}
		
		if(!backendPrice.equals(booking.getTicket().getWebPrice())) {
			logger.error("Web and backend prices do not match");
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
		
		MarxismWebsite marxismWebsite = (MarxismWebsite) context.getAttribute("marxismWebsite");

		model.addAttribute("content", marxismWebsite);
		
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
	
	private MarxismWebsite getMarxismWebsite() throws JsonProcessingException {

		MarxismWebsite marxismWebsite = (MarxismWebsite) context.getAttribute("marxismWebsite");

		if(marxismWebsite == null) {

			marxismWebsite = marxismWebsiteRepository.findByIsLive( true );

			logger.info("Have loaded marxism website content {}", marxismWebsite);

			logger.info("Contains {} speakers", marxismWebsite.getSpeakers().size());
			logger.info("Contains {} themes", marxismWebsite.getThemes().size());
			logger.info("Contains {} carousel items", marxismWebsite.getCarouselItems().size());
			logger.info("Contains {} culture items", marxismWebsite.getCultureItems().size());
			logger.info("Contains {} meetings", marxismWebsite.getMeetings().size());

			logger.info("Marxism website content placed into context");
			
			logger.info("Building meetings json");
			htmlBuilder.buildMeetings( marxismWebsite.getMeetings() );
			
			
			ObjectMapper mapper = new ObjectMapper();
			
			String meetingsJson = mapper.writeValueAsString(marxismWebsite.getMeetings());
			
			logger.debug("Meetings json : {}", meetingsJson);
			
			marxismWebsite.setMeetingsJson(meetingsJson);
			
			logger.info("Building readmore for themes");
			htmlBuilder.buildThemes( marxismWebsite.getThemes() );
			
			//Get rid of unused objects
			marxismWebsite.setMeetings(null);
			
			context.setAttribute("marxismWebsite", marxismWebsite);
		}

		return marxismWebsite;
	}	

}
