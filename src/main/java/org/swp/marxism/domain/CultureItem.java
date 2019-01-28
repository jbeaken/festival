package org.swp.marxism.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class CultureItem extends MarxismEntity {
	
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
	
	private String videoUrl;
	
	@Transient
	private String readMore;	

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

	public String getReadMore() {
		return readMore;
	}

	public void setReadMore(String readMore) {
		this.readMore = readMore;
	}

	public String getVideoUrl() {
		return videoUrl;
	}

	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}


}
