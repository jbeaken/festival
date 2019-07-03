package org.party.festival.bean;

import lombok.Data;

@Data
public class CultureItem extends AbstractBean {
	
	private String name;
	
	private String title;
	
	private String text;
	
	private String videoUrl;
	
	private String readMore;
}
