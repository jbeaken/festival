package org.party.festival.exception;

public class BookingNotFoundException extends RuntimeException {

    public BookingNotFoundException(String message) {

        super("Could not find booking " + message);
    }
}
