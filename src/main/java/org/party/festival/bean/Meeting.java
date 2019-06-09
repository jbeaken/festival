package org.party.festival.bean;


import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;


@Data
public class Meeting extends AbstractBean {
	
	private String title;
	
	private Day day;
	
	private String time;
	
	private String speakers;
	
	private String room;
	
	private Venue venue;
	
	private String description;
	
	@JsonIgnore
	private List<Theme> themes;
	
	private String html;
}
