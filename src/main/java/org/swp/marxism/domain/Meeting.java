package org.swp.marxism.domain;


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


@Entity
@Data
public class Meeting extends MarxismEntity {
	
	@NotNull
	@Size(max=500, min=10)
	private String title;
	
	@Enumerated(EnumType.STRING)
	@NotNull
	private Day day;
	
	@NotNull
	private String time;
	
	private String speakers;
	
	private String room;
	
	@ManyToOne(fetch=FetchType.EAGER, cascade = CascadeType.ALL, optional = false)
	private Venue venue;
	
	@Column(columnDefinition="text")
	private String description;
	
	@ManyToMany(fetch=FetchType.EAGER, mappedBy="meetings")
	@JsonIgnore
	private List<Theme> themes;
	
	@Transient
	private String html;
}
