package org.swp.marxism.controller.command;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class ContactForm {

	@NotNull
	@Email
	public String email;
	
	@NotNull
	@NotBlank
	private String message;
	
	@NotNull
	@NotBlank
	private String name;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "ContactForm [email=" + email + ", message=" + message + ", name=" + name + "]";
	}
}
