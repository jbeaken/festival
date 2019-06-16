package org.party.festival.controller;

import org.party.festival.exception.TokenException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.party.festival.exception.BookingNotFoundException;

@ControllerAdvice
public class FestivalControllerAdvice {

    @ResponseBody
    @ResponseStatus(code = HttpStatus.NOT_FOUND)
    @ExceptionHandler(BookingNotFoundException.class)
    String notFound(BookingNotFoundException e) {

        return e.getMessage();
    }

    @ResponseBody
    @ResponseStatus(code = HttpStatus.FORBIDDEN)
    @ExceptionHandler(TokenException.class)
    String invalidToken(TokenException e) {

        return e.getMessage();
    }
}
