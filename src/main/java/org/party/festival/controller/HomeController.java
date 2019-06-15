<<<<<<< HEAD:src/main/java/org/party/festival/controller/HomeController.java
package org.party.festival.controller;

import lombok.extern.slf4j.Slf4j;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.party.festival.domain.Booking;
import org.party.festival.domain.BookingStatus;
import org.party.festival.domain.Ticket;
import org.party.festival.exception.BookingNotFoundException;
package org.swp.marxism.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import lombok.extern.slf4j.Slf4j;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.context.ApplicationContext;
import org.springframework.core.env.Environment;
import org.springframework.core.env.Profiles;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.party.festival.amqp.MessageProducer;
import org.party.festival.controller.bean.Feedback;
import org.party.festival.controller.command.ContactForm;
import org.party.festival.bean.*;
import org.party.festival.exception.FestivalException;
import org.party.festival.repository.BookingRepository;
import org.party.festival.service.WebsiteService;
import org.swp.marxism.amqp.MessageProducer;
import org.swp.marxism.controller.bean.Feedback;
import org.swp.marxism.controller.command.ContactForm;
import org.swp.marxism.domain.*;
import org.swp.marxism.exception.MarxismException;
import org.swp.marxism.repository.BookingRepository;
import org.thymeleaf.context.Context;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.NoSuchAlgorithmException;
import java.time.YearMonth;
import java.util.Optional;

@Controller("/")
@Slf4j
public class HomeController {

	@Autowired
	private BookingRepository bookingRepository;

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private Environment environment;

	@Autowired
	private ServletContext servletContext;

	@Autowired
	private ApplicationContext appContext;
<<<<<<< HEAD:src/main/java/org/swp/marxism/controller/HomeController.java
	private HtmlBuilder htmlBuilder;
	@Value("${marxism.email.to}")
=======

<<<<<<< HEAD
	@Value("${festival.email.to}")
>>>>>>> bdd0bbb... Moving files to party festival package:src/main/java/org/party/festival/controller/HomeController.java
	private String emailTo;
=======
	@Value("${festival.office.email}")
	private String officeEmail;
>>>>>>> 34b4c6b... New property files

	@Autowired
	private MessageProducer messageProducer;

<<<<<<< HEAD:src/main/java/org/party/festival/controller/HomeController.java
	@Autowired
	private WebsiteService websiteService;

<<<<<<< HEAD
=======
>>>>>>> 29379a0... Clean up, removing entity annotation:src/main/java/org/swp/marxism/controller/HomeController.java
=======
	@Value("${festival.email.header}")
	private String emailHeader;

>>>>>>> d128af8... Removing header
	@InitBinder("booking")
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(String.class, "accommodationNeeds", new StringTrimmerEditor(true));
		binder.registerCustomEditor(String.class, "accommodationContact", new StringTrimmerEditor(true));
		binder.registerCustomEditor(String.class, "discountCode", new StringTrimmerEditor(true));
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model)  {

<<<<<<< HEAD:src/main/java/org/swp/marxism/controller/HomeController.java
		logger.info("Received request for home");
		
		try {
			messageProducer.sendHome();
		} catch(Exception e) {
			logger.error("Cannot send home message", e);
		}

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
		MarxismWebsite marxismWebsite = getMarxismWebsite();
=======
		Website website = getWebsite();
>>>>>>> bdd0bbb... Moving files to party festival package:src/main/java/org/party/festival/controller/HomeController.java

		if (environment.acceptsProfiles(Profiles.of("prod"))) {
			website.setIsDev(false);
		} else {
			website.setIsDev(true);
		}

		model.addAttribute("content", website);

<<<<<<< HEAD:src/main/java/org/party/festival/controller/HomeController.java
=======
		if (environment.acceptsProfiles(Profiles.of("prod"))) {
			marxismWebsite.setIsDev(false);
		} else {
			marxismWebsite.setIsDev(true);
		}

		model.addAttribute("content", marxismWebsite);
		
>>>>>>> 29379a0... Clean up, removing entity annotation:src/main/java/org/swp/marxism/controller/HomeController.java
		return "home.html";
	}

	@RequestMapping("/.well-known/acme-challenge/{filename}")
	public void certbot(@PathVariable("filename") String filename, HttpServletResponse response)
			throws java.io.IOException {

		Resource resource = appContext.getResource("file:/var/www/html/.well-known/acme-challenge/" + filename);

		InputStream is = resource.getInputStream();

		OutputStream os = response.getOutputStream();

		IOUtils.copy(is, os);
		os.flush();
		os.close();
	}

	@RequestMapping(value = "/timetable", method = RequestMethod.GET)
	public void downloadTimetablePDF(HttpServletResponse response) throws java.io.IOException {

		Resource resource = appContext.getResource("file:/home/bookmarks/festival/pdf/timetable.pdf");

		InputStream is = resource.getInputStream();

		response.setContentType("application/pdf");

		response.setHeader("Content-Disposition", "attachment; filename=\"festivalTimetable.pdf\"");

		OutputStream os = response.getOutputStream();

		IOUtils.copy(is, os);
		os.flush();
		os.close();
	}

	@RequestMapping(value = "/booking/details", method = RequestMethod.GET)
	public String redirectFromOldUrls() {

		log.info("Received request from old website /booking/details");

		return "redirect:/";
	}

	@RequestMapping(value = "/feedback", method = RequestMethod.POST)
	public ResponseEntity<String> feedback(@RequestBody Feedback feedback)
			throws NoSuchAlgorithmException {

		log.info("Received feeback {} ", feedback);

		Long id = Long.parseLong(feedback.getOrderid().replace("MRX" + YearMonth.now().getYear() + "_", ""));

		log.info("Extracted booking id {}", id);

		boolean shaCheck = feedback.checkSha("435dhsgidcddT4g");

		log.info("shaCheck = {}", shaCheck);

		if (!shaCheck) {
			return new ResponseEntity<>("sha failure", HttpStatus.NOT_ACCEPTABLE);
		}

		Optional<Booking> optional = bookingRepository.findById(id);



<<<<<<< HEAD:src/main/java/org/party/festival/controller/HomeController.java
		Booking booking = optional.orElseThrow(() -> new BookingNotFoundException("Cannot find booking " + id));

=======
>>>>>>> 29379a0... Clean up, removing entity annotation:src/main/java/org/swp/marxism/controller/HomeController.java
		log.info("Got booking {}", booking);

		if (feedback.getBarclaysStatus().equals("5")) {
			log.info("Updating status to paid");
			bookingRepository.updateStatus(id, BookingStatus.PAID);
			try {
				sendEmail(booking);
			} catch (Exception e) {
				log.error("Cannot send booking email", e);
			}
		}
		

		if (feedback.getBarclaysStatus().equals("1")) {
			log.info("Updating status to cancelled");
			bookingRepository.updateStatus(id, BookingStatus.CANCELLED);
		}

		return ResponseEntity.ok("success");
	}

	@RequestMapping(value = "/book", method = RequestMethod.GET)
	public String book(Model model) {

		log.info("Received get request for book");

		model.addAttribute("content", getWebsite());
		model.addAttribute("gotoBookingForm", Boolean.TRUE);

		return "home.html";
	}

	@RequestMapping(value = "/modal/{content}", method = RequestMethod.GET)
	public String modalContent(@PathVariable String content) {

		log.info("Received request for modal {}", content);

		return "/modal/" + content;
	}

	@RequestMapping(value = "/book", method = RequestMethod.POST)
	public String book(@Valid Booking booking, BindingResult bindingResult, Model model) {

		log.info("Received post request for booking {}", booking);

		if (bindingResult.hasErrors()) {
			log.info("Booking failed validation {}", bindingResult);

			model.addAttribute(booking);

//			FieldError error = (FieldError) bindingResult.getAllErrors().get(0);
//			String message = error.getField() + " " + error.getDefaultMessage();

			return "error.html";
		}

		// Sanity check
		String backendPrice = getBackendPrice(booking);

		log.info("Checking booking price {} equals ticket.webPrice {} ", backendPrice,
				booking.getTicket().getWebPrice());

		if (!backendPrice.equals(booking.getTicket().getWebPrice())) {
			throw new FestivalException(
					"Web and backend prices do not match " + backendPrice + " : " + booking.getTicket().getWebPrice());
		}

		log.info("Passed validation, persisting");

		bookingRepository.save(booking);

		log.info("Booking persisted. All done!");

		String orderId = getOrderId(booking);

		try {
			messageProducer.send(booking, orderId);
		} catch (Exception e) {
			log.error("Cannot send booking message", e);
		}

		log.debug("Sending to barclays with order id {}", orderId);

		model.addAttribute(booking);
		model.addAttribute("amount", backendPrice);
		model.addAttribute("orderId", orderId);
		model.addAttribute("content", getWebsite());

		return "barclays.html";
	}

	private String getOrderId(Booking booking) {
		String orderId = "DEV";

		if (environment.acceptsProfiles(Profiles.of("prod"))) {
			orderId = "MRX";
		}

		orderId += YearMonth.now().getYear() + "_" + booking.getId();

		return orderId;
	}

	private String getBackendPrice(Booking booking) {

		Integer price = null;

		Ticket ticket = booking.getTicket();

		TicketPricing pricing = ticket.getPricing();

<<<<<<< HEAD:src/main/java/org/party/festival/controller/HomeController.java
		Website website = getWebsite();
=======
		MarxismWebsite marxismWebsite = (MarxismWebsite) context.getAttribute("marxismWebsite");
>>>>>>> 02f0d23... Fixed lower case discount code bug:src/main/java/org/swp/marxism/controller/HomeController.java

		switch (ticket.getType()) {
		case FULL:
			if (pricing == TicketPricing.WAGED)
				price = 55;
			if (pricing == TicketPricing.UNWAGED)
				price = 30;
			if (pricing == TicketPricing.STUDENT_HE)
				price = 30;
			if (pricing == TicketPricing.STUDENT_FE)
				price = 20;
			break;
		case DAY:
			Integer noOfDays = ticket.getNoOfDaysSelected();
			if (pricing == TicketPricing.WAGED)
				price = 20;
			if (pricing == TicketPricing.UNWAGED)
				price = 15;
			if (pricing == TicketPricing.STUDENT_HE)
				price = 15;
			if (pricing == TicketPricing.STUDENT_FE)
				price = 10;
			price = price * noOfDays;
			break;
		case FLEXI:
			if (pricing == TicketPricing.WAGED)
				price = 20;
			if (pricing == TicketPricing.UNWAGED)
				price = 15;
			if (pricing == TicketPricing.STUDENT_HE)
				price = 15;
			if (pricing == TicketPricing.STUDENT_FE)
				price = 10;
			break;
		}

		// After party
		if (ticket.getAfterParty() != null && ticket.getAfterParty()) {
			price += 5;
		}

<<<<<<< HEAD:src/main/java/org/party/festival/controller/HomeController.java
		if (website.getShowEarlyBirdDiscount()) {
=======
		if (marxismWebsite.getShowEarlyBirdDiscount() == true) {
>>>>>>> 02f0d23... Fixed lower case discount code bug:src/main/java/org/swp/marxism/controller/HomeController.java
			price -= 5;
		}

		price = price * 100;

		// Discount Codes
		if (website.getShowDiscountCode()) {
			if (booking.getDiscountCode() != null
					&& booking.getDiscountCode().toLowerCase()
<<<<<<< HEAD:src/main/java/org/party/festival/controller/HomeController.java
					.equals(website.getDiscountCode().toLowerCase())) {
				price = (int) (price * 0.9);
			} else {
				// They could have put anything in here
=======
					.equals(marxismWebsite.getDiscountCode().toLowerCase())) {
				price = (int) (price * 0.9);
			} else {
				// They could have put anything in here
//				booking.setDiscountCode(null);
>>>>>>> 02f0d23... Fixed lower case discount code bug:src/main/java/org/swp/marxism/controller/HomeController.java
			}
		}

		return price + "";
	}

	@RequestMapping(value = "/thankYou", method = RequestMethod.GET)
	public String thankYou(Model model) {

		log.info("Received thankYou");

		Website website = getWebsite();

		model.addAttribute("content", website);

		return "home.html";
	}

	@RequestMapping(value = "/sendEmail", method = RequestMethod.POST)
	@ResponseBody
	public String sendEmail(@Valid ContactForm contactForm, BindingResult bindingResult) {

		log.info("Received post request for sendEmail {}", contactForm);

		if (bindingResult.hasErrors()) {
			// Should never happen, js validation
			log.info("Failed validation {}", bindingResult);

			return "error";
		}

<<<<<<< HEAD:src/main/java/org/party/festival/controller/HomeController.java
		log.info("Passed validation, sending email to {}", officeEmail);
=======
		log.info("Passed validation, sending email to {}", emailTo);
>>>>>>> 29379a0... Clean up, removing entity annotation:src/main/java/org/swp/marxism/controller/HomeController.java

		try {

			final MimeMessage mimeMessage = this.mailSender.createMimeMessage();

			MimeMessageHelper message = new MimeMessageHelper(mimeMessage, true, "UTF-8");

			message.setSubject("Someone has contacted us using the website.");

			message.setFrom(contactForm.getEmail());

			message.setTo(officeEmail);

			message.setBcc("jack747@gmail.com");

			String builder = "Name : " + contactForm.getName() + "<br/>" +
					"Email : " + contactForm.getEmail() + "<br/>" +
					"Message : " + contactForm.getMessage() + "<br/>";
			message.setText(builder, true);

			this.mailSender.send(mimeMessage);

		} catch (MessagingException e) {
			log.error("Cannot send email", e);
			return "error";
		}

		return "success";
	}

	private void sendEmail(Booking booking) throws MessagingException {

		log.info("Sending booking confirmation");

		Website website = getWebsite();

		final Context ctx = new Context();
		ctx.setVariable("booking", booking);

		final MimeMessage mimeMessage = this.mailSender.createMimeMessage();
		final MimeMessageHelper message = new MimeMessageHelper(mimeMessage, false, "UTF-8");

		message.setSubject(website.getEmailSubject());
		message.setFrom(officeEmail);

		if (environment.acceptsProfiles(Profiles.of("prod"))) {
			message.setBcc(officeEmail);
			message.setTo(booking.getEmail());
		} else {
			message.setTo(officeEmail);
		}

		log.info("Sending bcc email to {}", officeEmail);

		String html = emailHeader;

		html += "<h1>Thank you for booking a ticket for " + website.getName() + " " + website.getName() + ".</h1>";
		html += "<p>Dear " + booking.getFullname() + "</p>";

		html += website.getEmailText();

		html += "<br/><p>Please quote booking number " + booking.getId() + "</p>";

		message.setText(html, true); // true = isHtml

		this.mailSender.send(mimeMessage);

<<<<<<< HEAD:src/main/java/org/party/festival/controller/HomeController.java
		log.info("Mail successfully sent!");
=======
		log.info("Mail successfuly sent!");
>>>>>>> 29379a0... Clean up, removing entity annotation:src/main/java/org/swp/marxism/controller/HomeController.java
	}

	public synchronized Website getWebsite() {

		Website website = (Website) servletContext.getAttribute("website");

<<<<<<< HEAD:src/main/java/org/party/festival/controller/HomeController.java
		if(website == null) {

			synchronized (this) {

				//Another check in case previous thread hasn't already build website object
				if(website != null) return website;

				website = websiteService.loadWebsiteFromFileSystem();

				servletContext.setAttribute("website", website);
			}
		}
=======
//		if (marxismWebsite == null) {
//			marxismWebsite = marxismService.buildWebsite();
//			context.setAttribute("marxismWebsite", marxismWebsite);
//		}
>>>>>>> fff6c70... Adding lombok, and moved HtmlBuilder to puma:src/main/java/org/swp/marxism/controller/HomeController.java

		return website;
	}
}
