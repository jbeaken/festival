package org.swp.marxism.domain;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class Theme extends MarxismEntity {
	
	
	@NotNull
	@Size(max=30, min=3)
	@Column(unique=true)
	private String name;
	
	@NotNull
	@Size(max=255, min=3)
	private String shortDescription;
	
	@NotNull
	@Column(columnDefinition = "text")
	@Size(max=1000, min=3)
	private String longDescription;
	
	@Transient
	private String readMore;
	
	@NotNull
	private String imageUrl;
	
	@ManyToMany
	private List<Meeting> meetings;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getShortDescription() {
		return shortDescription;
	}

	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

	public String getLongDescription() {
		return longDescription;
	}

	public void setLongDescription(String longDescription) {
		this.longDescription = longDescription;
	}

	@Override
	public String toString() {
		return "Speaker [id=" + getId() + ", name=" + name + ", shortDescription=" + shortDescription + ", longDescription=" + longDescription + "]";
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public List<Meeting> getMeetings() {
		return meetings;
	}

	public void setMeetings(List<Meeting> meetings) {
		this.meetings = meetings;
	}

	public String getReadMore() {
		return readMore;
	}

	public void setReadMore(String readMore) {
		this.readMore = readMore;
	}

}
