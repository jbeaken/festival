package org.party.festival.domain;


import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;


@Data
public class Meeting extends MarxismEntity {
	
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
