package org.swp.marxism.domain;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OrderColumn;
import javax.validation.constraints.NotNull;


@Entity
public class MarxismWebsiteContent {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	@NotNull
	private String name;
	
	@NotNull
	private Boolean isLive;
	
	@Embedded
	private MarxismAbout about;
	
//	@Embedded
//	private MarxismSpeakers speakersContent;	
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	@OrderColumn(name="speaker_index", nullable=false)
	private List<Speaker> speakers;
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	@OrderColumn(name="theme_index", nullable=false)
	private List<Theme> themes;
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	@OrderColumn(name="carousel_item_index", nullable=false)
	private List<CarouselItem> carouselItems;	

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Speaker> getSpeakers() {
		return speakers;
	}

	public void setSpeakers(List<Speaker> speakers) {
		this.speakers = speakers;
	}

	@Override
	public String toString() {
		return "MarxismWebsiteContent [id=" + id + ", name=" + name + ", isLive=" + isLive + ", speakers=" + speakers + "]";
	}

	public Boolean getIsLive() {
		return isLive;
	}

	public void setIsLive(Boolean isLive) {
		this.isLive = isLive;
	}

	public List<Theme> getThemes() {
		return themes;
	}

	public void setThemes(List<Theme> themes) {
		this.themes = themes;
	}

	public List<CarouselItem> getCarouselItems() {
		return carouselItems;
	}

	public void setCarouselItems(List<CarouselItem> carouselItems) {
		this.carouselItems = carouselItems;
	}

	public MarxismAbout getAbout() {
		return about;
	}

	public void setAbout(MarxismAbout about) {
		this.about = about;
	}

	public MarxismSpeakers getSpeakersContent() {
		return speakersContent;
	}

	public void setSpeakersContent(MarxismSpeakers speakersContent) {
		this.speakersContent = speakersContent;
	}
}
