package org.party.festival.bean;

import lombok.Data;

import java.util.List;

@Data
public class Theme extends AbstractBean {
	
	private String name;
	
	private String shortDescription;
	
	private String longDescription;
	
	private String readMore;
	
	private List<Meeting> meetings;
}
