package org.swp.marxism;

import org.junit.Test;

import static org.hamcrest.Matchers.hasSize;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import org.junit.runner.RunWith;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@AutoConfigureMockMvc
@WithMockUser(roles={"MARXISM"})
public class BookingTests {
	
	@Autowired
	private MockMvc mvc;

	@Test
	public void bookings() throws Exception {
		this.mvc.perform(get("/bookings/").accept(MediaType.TEXT_HTML))
		.andExpect(status().isOk())
		.andExpect(view().name("admin/bookings.html"))
		.andExpect(model().attributeExists("bookingList"))
		.andExpect(model().attribute("bookingList", hasSize( 8 )));
	}

	@Test
	public void viewBooking() throws Exception {
		this.mvc.perform(get("/bookings/view/1").accept(MediaType.TEXT_HTML))
		.andExpect(status().isOk())
		.andExpect(view().name("admin/view.html"))
		.andExpect(model().attributeExists("booking"));
	}	
}
