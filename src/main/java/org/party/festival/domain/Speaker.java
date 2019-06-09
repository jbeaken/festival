package org.party.festival.domain;

import lombok.Data;

import javax.persistence.Entity;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


@Data
public class Speaker extends MarxismEntity {
	
	private String name;
	
	private String shortDescription;
	
	private String longDescription;
}
