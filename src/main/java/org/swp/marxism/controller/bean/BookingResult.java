package org.swp.marxism.controller.bean;

import org.swp.marxism.domain.Booking;

public class BookingResult {

	private String message;
	
	private Booking booking;

	public BookingResult() {
		super();
	}
	
	public BookingResult(Booking booking) {
		this("success");
		this.booking = booking;
	}

	public BookingResult(String message) {
		this();
		this.message = message;
	}

	public String getMessage() {
		return message;
	}

	public Booking getBooking() {
		return booking;
	}
}
