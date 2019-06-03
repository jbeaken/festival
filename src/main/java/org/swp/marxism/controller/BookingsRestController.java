package org.swp.marxism.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.swp.marxism.domain.Booking;
import org.swp.marxism.exception.BookingNotFoundException;
import org.swp.marxism.repository.BookingRepository;

import java.util.List;

@RestController
@RequestMapping("/booking")
public class BookingsRestController {


    @Autowired
    private BookingRepository bookingRepository;

    protected static final Logger logger = LoggerFactory.getLogger(BookingsRestController.class);

    @GetMapping(value = "/", consumes = "application/json", produces = "application/json")
    public List<Booking> bookings() {
        return bookingRepository.findAll();
    }

    @GetMapping(value = "/{id}", consumes = "application/json", produces = "application/json")
    public Booking booking(@PathVariable("id") Long id) {
        return bookingRepository.findById(id).orElseThrow(() -> new BookingNotFoundException(id));
    }

    @PostMapping(value = "/")
    public Booking save(@RequestBody Booking booking) {
        return bookingRepository.save(booking);
    }

    @PutMapping(value = "/{id}")
    public Booking edit(@RequestBody Booking booking, @PathVariable Long id) {

        return bookingRepository.findById(id)
                .map(b -> {
//                    b.setName(booking.getName());
//                    b.setRole(booking.getRole());
                    return bookingRepository.save(b);
                })
                .orElseGet(() -> {
                    booking.setId(id);
                    return bookingRepository.save(booking);
                });
    }

    @DeleteMapping(value = "/{id}")
    public void delete(@PathVariable Long id) {
        bookingRepository.deleteById( id );
    }
}
