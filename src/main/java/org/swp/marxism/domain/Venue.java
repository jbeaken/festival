package org.swp.marxism.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.validation.constraints.NotNull;

@Entity
@Data
public class Venue extends MarxismEntity {
	
	private String name;
	
	private String address;
}
