package org.party.festival.controller;


import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.party.festival.exception.BookingNotFoundException;

@org.springframework.web.bind.annotation.ControllerAdvice
public class MarxismControllerAdvice {

    @ResponseBody
    @ResponseStatus(code = HttpStatus.NOT_FOUND)
    @ExceptionHandler(BookingNotFoundException.class)
    String notFound(BookingNotFoundException e) {

        return e.getMessage();
    }
}
