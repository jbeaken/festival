package org.swp.marxism.controller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.web.bind.annotation.RequestMapping;

//@Controller
public class ErrController implements ErrorController {

	private static final String PATH = "/error";
	
    @RequestMapping(value = PATH, produces = "text/html")
    public String error() {
        return "404_2.html";
    }

	@Override
	public String getErrorPath() {
		return PATH;
	}
}
