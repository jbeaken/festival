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
public class MarxismApplicationTests {
	
	@Autowired
	private MockMvc mvc;

	@Test
	public void testHome() throws Exception {
		this.mvc.perform(get("/").accept(MediaType.TEXT_HTML))
		.andExpect(status().isOk()).andExpect(content().string(containsString( "Marxism Festival" )));
	}
	
	@Test
	public void testRedirectForOldUrl() throws Exception {
		this.mvc.perform(get("/booking/details").accept(MediaType.TEXT_HTML))
		.andExpect(status().isFound())
		.andExpect(redirectedUrl("/"));
	}
	
	@Test
	public void testBook() throws Exception {
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
		.andExpect(view().name("barclays.html"));     
	}		

}
