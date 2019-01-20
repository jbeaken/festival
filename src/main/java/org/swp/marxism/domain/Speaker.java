package org.swp.marxism.domain;

import javax.persistence.Entity;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


@Entity
public class Speaker extends MarxismEntity {
	
	@NotNull
	@Size(max=30, min=3)
	private String name;
	
	@NotNull
	@Size(max=1000, min=3)
	private String shortDescription;
	
	@Size(max=3000, min=3)
	private String longDescription;
	
	@NotNull
	private String imageUrl;

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

}
