package org.swp.marxism.domain;

import javax.persistence.Entity;
import javax.validation.constraints.NotNull;

@Entity
public class Venue extends MarxismEntity {
	
	@NotNull
	private String name;
	
	@NotNull
	private String address;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
}
