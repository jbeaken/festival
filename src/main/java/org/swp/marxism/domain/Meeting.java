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


@Entity
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
	private String json;
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Day getDay() {
		return day;
	}

	public void setDay(Day day) {
		this.day = day;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getSpeakers() {
		return speakers;
	}

	public void setSpeakers(String speakers) {
		this.speakers = speakers;
	}

	public List<Theme> getThemes() {
		return themes;
	}

	public void setThemes(List<Theme> themes) {
		this.themes = themes;
	}

	public String getJson() {
		return json;
	}

	public void setJson(String json) {
		this.json = json;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}

	public Venue getVenue() {
		return venue;
	}

	public void setVenue(Venue venue) {
		this.venue = venue;
	}

	@Override
	public String toString() {
		return "Meeting [title=" + title + ", day=" + day + ", time=" + time + ", speakers=" + speakers + ", room="
				+ room + ", venue=" + venue + ", description=" + description + ", themes=" + themes + ", json=" + json
				+ "]";
	}


}
