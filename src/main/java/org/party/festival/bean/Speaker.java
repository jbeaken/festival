package org.party.festival.bean;

import lombok.Data;


@Data
public class Speaker extends AbstractBean {
	
	private String name;
	
	private String shortDescription;
	
	private String longDescription;
}
