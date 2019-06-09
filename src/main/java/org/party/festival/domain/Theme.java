package org.party.festival.domain;

import lombok.Data;

import java.util.List;

@Data
public class Theme extends MarxismEntity {
	
	private String name;
	
	private String shortDescription;
	
	private String longDescription;
	
	private String readMore;
	
	private List<Meeting> meetings;
}
