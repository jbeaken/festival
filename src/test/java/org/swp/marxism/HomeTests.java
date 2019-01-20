package org.swp.marxism;

import org.junit.Test;

import static org.hamcrest.CoreMatchers.containsString;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import org.junit.runner.RunWith;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;

import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@AutoConfigureMockMvc
public class HomeTests {
	
	@Autowired
	private MockMvc mvc;

	@Test
	public void testHome() throws Exception {
		this.mvc.perform(get("/").accept(MediaType.TEXT_HTML))
		.andExpect(status().isOk())
		.andExpect(view().name("home.html"))
		.andExpect(model().attributeExists("content"))
		.andExpect(content().string(containsString( "Marxism Festival" )));
	}
	
	@Test
	public void testThankYou() throws Exception {
		this.mvc.perform(get("/thankYou").accept(MediaType.TEXT_HTML))
		.andExpect(status().isOk())
		.andExpect(model().attributeExists("content"))
		.andExpect(view().name("home.html"));     
	}	
	
	@Test
	public void testFeedbackInvalidSha() throws Exception {
		this.mvc.perform(post("/feedback")
				.accept(MediaType.TEXT_HTML)
				.contentType(MediaType.APPLICATION_JSON)
				.content("{ \"orderid\" : \"2\", \"name\" : \"name\", \"barclaysStatus\" : \"1\", \"amount\" : \"200\", \"sha\" : \"adf\" }"))
		.andExpect(status().isNotAcceptable()).andExpect(content().string( "sha failure" ));
	}
	
	@Test
	public void testFeedbackPaid() throws Exception {
		this.mvc.perform(post("/feedback")
				.accept(MediaType.TEXT_HTML)
				.contentType(MediaType.APPLICATION_JSON)
				.content("{ \"orderid\" : \"2\", \"name\" : \"name\", \"barclaysStatus\" : \"5\", \"amount\" : \"200\", \"sha\" : \"90d954ac67bf65fa4ad5862caaa5f3d95c45f3a0ffd7bb7fab985eb950a64a257a01769c8ab6cb3c539a6a0b2e085d146d59d57388aea8d2853fcab881e7b0aa\" }"))
		.andExpect(status().isOk()).andExpect(content().string( "success" ));
	}		
	
	@Test
	public void testRedirectForOldUrl() throws Exception {
		this.mvc.perform(get("/booking/details").accept(MediaType.TEXT_HTML))
		.andExpect(status().isFound())
		.andExpect(redirectedUrl("/"));
	}
	
	@Test
	public void testBookWithValidDiscountCode() throws Exception {
		//Load MarxismContent into ServletContext
		this.mvc.perform(get("/").accept(MediaType.TEXT_HTML));
		
		this.mvc.perform(post("/book").accept(MediaType.TEXT_HTML)
		.param("firstname","firstname")
		.param("lastname","lastname")
		.param("email","email@gmail.com")
		.param("telephone","telephone")
		.param("hearAbout","SocialNetwork")
		.param("accommodationNeeds","accommodationNeeds")
		.param("accommodationContact","accommodationContact")
		.param("childrenUnder18Months","2")
		.param("children5YearsTo11years","")
		.param("children18MonthsTo5Years","1")
		.param("address.address1","")
		.param("address.address2","")
		.param("address.town","")
		.param("address.postcode","")
		.param("address.country","")
		.param("discountCode","student193")
		.param("ticket.type","FULL")
		.param("ticket.pricing","UNWAGED")
		.param("ticket.webPrice","2700")
		.param("ticket.afterParty","true"))
		.andExpect(status().isOk())
		.andExpect(model().attributeExists("booking", "amount", "orderId"))
		.andExpect(model().attribute("orderId", "DEV10"))
		.andExpect(model().attribute("amount", "2700"))
		//.andExpect(model().attribute("booking.email", "email@gmail.com"))
		.andExpect(view().name("barclays.html"));     
	}
	
	@Test
	public void testBookWithInvalidDiscountCode() throws Exception {
		//Load MarxismContent into ServletContext
		this.mvc.perform(get("/").accept(MediaType.TEXT_HTML));
		
		this.mvc.perform(post("/book").accept(MediaType.TEXT_HTML)
		.param("firstname","firstname")
		.param("lastname","lastname")
		.param("email","email@gmail.com")
		.param("telephone","telephone")
		.param("hearAbout","SocialNetwork")
		.param("accommodationNeeds","accommodationNeeds")
		.param("accommodationContact","accommodationContact")
		.param("childrenUnder18Months","2")
		.param("children5YearsTo11years","")
		.param("children18MonthsTo5Years","1")
		.param("address.address1","")
		.param("address.address2","")
		.param("address.town","")
		.param("address.postcode","")
		.param("address.country","")
		.param("discountCode","Blah")
		.param("ticket.type","FULL")
		.param("ticket.pricing","UNWAGED")
		.param("ticket.webPrice","3000")
		.param("ticket.afterParty","true"))
		.andExpect(status().isOk())
		.andExpect(model().attributeExists("booking", "amount", "orderId"))
		.andExpect(model().attribute("orderId", "DEV11"))
		.andExpect(model().attribute("amount", "3000"))
		//.andExpect(model().attribute("booking.email", "email@gmail.com"))
		.andExpect(view().name("barclays.html"));     
	}		
	
	@Test
	public void testBook() throws Exception {
		//Load MarxismContent into ServletContext
		this.mvc.perform(get("/").accept(MediaType.TEXT_HTML));
		
		this.mvc.perform(post("/book").accept(MediaType.TEXT_HTML)
		.param("firstname","firstname")
		.param("lastname","lastname")
		.param("email","email@gmail.com")
		.param("telephone","telephone")
		.param("hearAbout","SocialNetwork")
		.param("accommodationNeeds","accommodationNeeds")
		.param("accommodationContact","accommodationContact")
		.param("childrenUnder18Months","2")
		.param("children5YearsTo11years","")
		.param("children18MonthsTo5Years","1")
		.param("address.address1","")
		.param("address.address2","")
		.param("address.town","")
		.param("address.postcode","")
		.param("address.country","")
		.param("ticket.type","FULL")
		.param("ticket.pricing","UNWAGED")
		.param("ticket.webPrice","3000")
		.param("ticket.afterParty","true"))
		.andExpect(status().isOk())
		.andExpect(model().attributeExists("booking", "amount", "orderId"))
		.andExpect(model().attribute("orderId", "DEV9"))
		.andExpect(model().attribute("amount", "3000"))
		//.andExpect(model().attribute("booking.email", "email@gmail.com"))
		.andExpect(view().name("barclays.html"));     
	}
	
	@Test
	public void testSendEmail() throws Exception {
		this.mvc.perform(post("/sendEmail").accept(MediaType.TEXT_HTML)
		.param("name","name")
		.param("message","message")
		.param("email","email@gmail.com"))
		.andExpect(status().isOk()).andExpect(content().string( "success" ));
	}	
}
