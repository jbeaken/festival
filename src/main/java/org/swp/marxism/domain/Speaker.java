package org.swp.marxism.domain;

import lombok.Data;

import javax.persistence.Entity;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


@Entity
@Data
public class Speaker extends MarxismEntity {
	
	@NotNull
	@Size(max=30, min=3)
	private String name;
	
	@NotNull
	@Size(max=1000, min=3)
	private String shortDescription;
	
	@Size(max=3000, min=3)
	private String longDescription;
}
