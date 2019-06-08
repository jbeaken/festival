package org.swp.marxism;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.swp.marxism.domain.*;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@AutoConfigureMockMvc
@WithMockUser(roles = {"MARXISM"})
public class BookingsRestControllerTest {

    @Autowired
    private MockMvc mvc;

    private final Booking booking = new Booking();

    @Before
    public void setup() throws JsonProcessingException {
        booking.setFirstname("firstname");
        booking.setLastname("lastname");
        booking.setEmail("email@email.com");
        booking.setTelephone("telephone");
        booking.setHearAbout(HearAbout.BeenBefore);
        booking.setAccommodationNeeds("accomoddationNeeds");
        booking.setAccommodationContact("ac");

        Address address = new Address();
        address.setAddress1("address1");
        address.setAddress2("address2");
        address.setPostcode("postcode");

        Ticket ticket = new Ticket();
        ticket.setType(TicketType.FULL);
        ticket.setPricing(TicketPricing.UNWAGED);
        ticket.setWebPrice("3000");
        ticket.setAfterParty(true);

        booking.setAddress(address);
        booking.setTicket(ticket);
    }

    @Test
    public void booking() throws Exception {

        this.mvc.perform(get("/booking/")
                .contentType("application/json")
                .accept("application/json"))
                .andExpect(status().isOk());
    }

    @Test
    public void save() throws Exception {

        ObjectMapper mapper = new ObjectMapper();

        String json = mapper.writeValueAsString(booking);

        this.mvc.perform(post("/booking/")
                .contentType(MediaType.APPLICATION_JSON)
                .content(json))
                .andExpect(status().isOk());
    }



    @Test
    public void edit() throws Exception {

        ObjectMapper mapper = new ObjectMapper();

        String json = mapper.writeValueAsString(booking);

        this.mvc.perform(put("/booking/1")
                .contentType(MediaType.APPLICATION_JSON)
                .content(json))
                .andExpect(status().isOk());
    }

    @Test
    public void deleteBooking() throws Exception {

        this.mvc.perform(delete("/booking/1"))
                .andExpect(status().isOk());
    }
}