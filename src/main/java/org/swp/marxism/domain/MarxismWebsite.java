package org.swp.marxism.domain;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OrderColumn;
import javax.persistence.Transient;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


@Entity
public class MarxismWebsite extends MarxismEntity {

	private static final long serialVersionUID = -2458604900857882516L;

	@NotNull
	private String name;
	
	@NotNull
	private Integer year;
	
	@NotNull
	private Boolean isLive;
	
	@Transient
	private Boolean isDev;
	

	//About Section
	@NotEmpty private String aboutHeading;
	private String aboutLine2;
	private String aboutLine3;
	@NotEmpty @Column(columnDefinition="text") private String aboutText;
	
	//Pricing Section
	@NotEmpty private String pricingHeading;
	@NotEmpty @Column(columnDefinition="text") private String pricingText;
	
	//Meetings Section
	@NotEmpty private String meetingHeading;
	
	//Confirmation Email
	@NotEmpty private String emailSubject;
	@NotEmpty @Size(max=2500, min=3) private String emailText;
	
	@NotNull private Integer pricingFullEventWaged;
	@NotNull private Integer pricingFullEventUnwaged;
	@NotNull private Integer pricingFullEventHE;
	@NotNull private Integer pricingFullEventFE;
	
	@NotNull private Integer pricingDayTicketWaged;
	@NotNull private Integer pricingDayTicketUnwaged;
	@NotNull private Integer pricingDayTicketHE;
	@NotNull private Integer pricingDayTicketFE;
	
	@NotNull private Integer pricingFlexiTicketWaged;
	@NotNull private Integer pricingFlexiTicketUnwaged;
	@NotNull private Integer pricingFlexiTicketHE;
	@NotNull private Integer pricingFlexiTicketFE;
	
	//Contact Section
	@NotEmpty private String contactHeading;
	@NotEmpty private String contactLine2;
	@NotEmpty private String contactTelephone;
	@NotEmpty private String contactEmail;
	@NotEmpty private String contactAddress1;
	@NotEmpty private String contactAddress2;
	@NotEmpty private String contactAddress3;
	private String contactAddress4;
	
	//Theme Section
	@NotEmpty private String themeHeading;
	
	//Discount
	@NotEmpty private String discountText;
	@NotNull private Boolean applyTicketDiscount;
	@NotNull private Integer discountAmount;
	
	//Video
	@NotEmpty private String videoUrl;
	
	//External links
	@NotNull private String audioUrl;
	@NotNull private String videosUrl;
	@NotNull private String galleryUrl;
	
	private String discountCode;
	
	//Json
	@Transient
	private String meetingsJson;
	
	@Transient
	private String themesJson;
	
	@ManyToMany(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	@OrderColumn(name="speaker_index", nullable=false)
	private List<Speaker> speakers;
	
	@ManyToMany(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	@OrderColumn(name="theme_index", nullable=false)
	private List<Theme> themes;
	
	@ManyToMany(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	@OrderColumn(name="carousel_item_index", nullable=false)
	private List<CarouselItem> carouselItems;	
	
	@ManyToMany(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	@OrderColumn(name="carousel_item_index", nullable=false)
	private List<CultureItem> cultureItems;	
	
	@ManyToMany(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	@JoinTable(name="marxism_website_about")
	@OrderColumn(name="about_item_index", nullable=false)
	private List<About> abouts;	
	
	//Visiblity
	@NotNull private Boolean showThemes;
	@NotNull private Boolean showPricing;
	@NotNull private Boolean showGallery;
	@NotNull private Boolean showSpeakers;
	@NotNull private Boolean showMeetings;
	@NotNull private Boolean showBooking;
	@NotNull private Boolean showContact;
	@NotNull private Boolean showAbout;
	@NotNull private Boolean showVideo;
	@NotNull private Boolean showDiscountCode;
	@NotNull private Boolean showCultureItems;
	@NotNull private Boolean showMeetingVenues;
	
	public Integer getDiscountAmount() {
		return discountAmount;
	}

	public void setDiscountAmount(Integer discountAmount) {
		this.discountAmount = discountAmount;
	}
	
	public Integer getPricingFullEventWaged() {
		return pricingFullEventWaged;
	}

	public void setPricingFullEventWaged(Integer pricingFullEventWaged) {
		this.pricingFullEventWaged = pricingFullEventWaged;
	}

	public Integer getPricingFullEventUnwaged() {
		return pricingFullEventUnwaged;
	}

	public void setPricingFullEventUnwaged(Integer pricingFullEventUnwaged) {
		this.pricingFullEventUnwaged = pricingFullEventUnwaged;
	}

	public Integer getPricingFullEventHE() {
		return pricingFullEventHE;
	}

	public void setPricingFullEventHE(Integer pricingFullEventHE) {
		this.pricingFullEventHE = pricingFullEventHE;
	}

	public Integer getPricingFullEventFE() {
		return pricingFullEventFE;
	}

	public void setPricingFullEventFE(Integer pricingFullEventFE) {
		this.pricingFullEventFE = pricingFullEventFE;
	}

	public Integer getPricingDayTicketWaged() {
		return pricingDayTicketWaged;
	}

	public void setPricingDayTicketWaged(Integer pricingDayTicketWaged) {
		this.pricingDayTicketWaged = pricingDayTicketWaged;
	}

	public Integer getPricingDayTicketUnwaged() {
		return pricingDayTicketUnwaged;
	}

	public void setPricingDayTicketUnwaged(Integer pricingDayTicketUnwaged) {
		this.pricingDayTicketUnwaged = pricingDayTicketUnwaged;
	}

	public Integer getPricingDayTicketHE() {
		return pricingDayTicketHE;
	}

	public void setPricingDayTicketHE(Integer pricingDayTicketHE) {
		this.pricingDayTicketHE = pricingDayTicketHE;
	}

	public Integer getPricingDayTicketFE() {
		return pricingDayTicketFE;
	}

	public void setPricingDayTicketFE(Integer pricingDayTicketFE) {
		this.pricingDayTicketFE = pricingDayTicketFE;
	}

	public Integer getPricingFlexiTicketWaged() {
		return pricingFlexiTicketWaged;
	}

	public void setPricingFlexiTicketWaged(Integer pricingFlexiTicketWaged) {
		this.pricingFlexiTicketWaged = pricingFlexiTicketWaged;
	}

	public Integer getPricingFlexiTicketUnwaged() {
		return pricingFlexiTicketUnwaged;
	}

	public void setPricingFlexiTicketUnwaged(Integer pricingFlexiTicketUnwaged) {
		this.pricingFlexiTicketUnwaged = pricingFlexiTicketUnwaged;
	}

	public Integer getPricingFlexiTicketHE() {
		return pricingFlexiTicketHE;
	}

	public void setPricingFlexiTicketHE(Integer pricingFlexiTicketHE) {
		this.pricingFlexiTicketHE = pricingFlexiTicketHE;
	}

	public Integer getPricingFlexiTicketFE() {
		return pricingFlexiTicketFE;
	}

	public void setPricingFlexiTicketFE(Integer pricingFlexiTicketFE) {
		this.pricingFlexiTicketFE = pricingFlexiTicketFE;
	}	
	
	public List<About> getAbouts() {
		return abouts;
	}

	public void setAbouts(List<About> abouts) {
		this.abouts = abouts;
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

	public String getVideoUrl() {
		return videoUrl;
	}

	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}

	public Boolean getApplyTicketDiscount() {
		return applyTicketDiscount;
	}

	public void setApplyTicketDiscount(Boolean applyTicketDiscount) {
		this.applyTicketDiscount = applyTicketDiscount;
	}

	public String getDiscountText() {
		return discountText;
	}

	public void setDiscountText(String discountText) {
		this.discountText = discountText;
	}

	public String getAboutLine2() {
		return aboutLine2;
	}

	public void setAboutLine2(String aboutLine2) {
		this.aboutLine2 = aboutLine2;
	}

	public String getAboutLine3() {
		return aboutLine3;
	}

	public void setAboutLine3(String aboutLine3) {
		this.aboutLine3 = aboutLine3;
	}

	public String getAboutText() {
		return aboutText;
	}

	public void setAboutText(String aboutText) {
		this.aboutText = aboutText;
	}

	public String getAboutHeading() {
		return aboutHeading;
	}

	public void setAboutHeading(String aboutHeading) {
		this.aboutHeading = aboutHeading;
	}

	public String getPricingHeading() {
		return pricingHeading;
	}

	public void setPricingHeading(String pricingHeading) {
		this.pricingHeading = pricingHeading;
	}

	public String getPricingText() {
		return pricingText;
	}

	public void setPricingText(String pricingText) {
		this.pricingText = pricingText;
	}

	public String getContactHeading() {
		return contactHeading;
	}

	public void setContactHeading(String contactHeading) {
		this.contactHeading = contactHeading;
	}

	public String getContactLine2() {
		return contactLine2;
	}

	public void setContactLine2(String contactLine2) {
		this.contactLine2 = contactLine2;
	}

	public String getContactTelephone() {
		return contactTelephone;
	}

	public void setContactTelephone(String contactTelephone) {
		this.contactTelephone = contactTelephone;
	}

	public String getContactEmail() {
		return contactEmail;
	}

	public void setContactEmail(String contactEmail) {
		this.contactEmail = contactEmail;
	}

	public String getContactAddress1() {
		return contactAddress1;
	}

	public void setContactAddress1(String contactAddress1) {
		this.contactAddress1 = contactAddress1;
	}

	public String getContactAddress2() {
		return contactAddress2;
	}

	public void setContactAddress2(String contactAddress2) {
		this.contactAddress2 = contactAddress2;
	}

	public String getContactAddress3() {
		return contactAddress3;
	}

	public void setContactAddress3(String contactAddress3) {
		this.contactAddress3 = contactAddress3;
	}

	public String getContactAddress4() {
		return contactAddress4;
	}

	public void setContactAddress4(String contactAddress4) {
		this.contactAddress4 = contactAddress4;
	}

	public String getThemeHeading() {
		return themeHeading;
	}

	public void setThemeHeading(String themeHeading) {
		this.themeHeading = themeHeading;
	}

	public String getAudioUrl() {
		return audioUrl;
	}

	public void setAudioUrl(String audioUrl) {
		this.audioUrl = audioUrl;
	}

	public String getVideosUrl() {
		return videosUrl;
	}

	public void setVideosUrl(String videosUrl) {
		this.videosUrl = videosUrl;
	}

	public String getGalleryUrl() {
		return galleryUrl;
	}

	public void setGalleryUrl(String galleryUrl) {
		this.galleryUrl = galleryUrl;
	}

	public Boolean getShowThemes() {
		return showThemes;
	}

	public void setShowThemes(Boolean showThemes) {
		this.showThemes = showThemes;
	}

	public Boolean getShowPricing() {
		return showPricing;
	}

	public void setShowPricing(Boolean showPricing) {
		this.showPricing = showPricing;
	}

	public Boolean getShowGallery() {
		return showGallery;
	}

	public void setShowGallery(Boolean showGallery) {
		this.showGallery = showGallery;
	}

	public Boolean getShowSpeakers() {
		return showSpeakers;
	}

	public void setShowSpeakers(Boolean showSpeakers) {
		this.showSpeakers = showSpeakers;
	}

	public Boolean getShowBooking() {
		return showBooking;
	}

	public void setShowBooking(Boolean showBooking) {
		this.showBooking = showBooking;
	}

	public Boolean getShowContact() {
		return showContact;
	}

	public void setShowContact(Boolean showContact) {
		this.showContact = showContact;
	}

	public Boolean getShowAbout() {
		return showAbout;
	}

	public void setShowAbout(Boolean showAbout) {
		this.showAbout = showAbout;
	}

	public Boolean getShowVideo() {
		return showVideo;
	}

	public void setShowVideo(Boolean showVideo) {
		this.showVideo = showVideo;
	}

	public String getMeetingsJson() {
		return meetingsJson;
	}

	public void setMeetingsJson(String meetingsJson) {
		this.meetingsJson = meetingsJson;
	}

	public void setThemesJson(String themesJson) {
		// TODO Auto-generated method stub
		
	}

	public List<CultureItem> getCultureItems() {
		return cultureItems;
	}

	public void setCultureItems(List<CultureItem> cultureItems) {
		this.cultureItems = cultureItems;
	}

	public Boolean getIsDev() {
		return isDev;
	}

	public void setIsDev(Boolean isDev) {
		this.isDev = isDev;
	}

	public Boolean getShowDiscountCode() {
		return showDiscountCode;
	}

	public void setShowDiscountCode(Boolean showDiscountCode) {
		this.showDiscountCode = showDiscountCode;
	}

	public String getDiscountCode() {
		return discountCode;
	}

	public void setDiscountCode(String discountCode) {
		this.discountCode = discountCode;
	}

	public Boolean getShowCultureItems() {
		return showCultureItems;
	}

	public void setShowCultureItems(Boolean showCultureItems) {
		this.showCultureItems = showCultureItems;
	}

	public Integer getYear() {
		return year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	public Boolean getShowMeetingVenues() {
		return showMeetingVenues;
	}

	public void setShowMeetingVenues(Boolean showMeetingVenues) {
		this.showMeetingVenues = showMeetingVenues;
	}

	public Boolean getShowMeetings() {
		return showMeetings;
	}

	public void setShowMeetings(Boolean showMeetings) {
		this.showMeetings = showMeetings;
	}

	public String getMeetingHeading() {
		return meetingHeading;
	}

	public void setMeetingHeading(String meetingHeading) {
		this.meetingHeading = meetingHeading;
	}

	public String getEmailSubject() {
		return emailSubject;
	}

	public void setEmailSubject(String emailSubject) {
		this.emailSubject = emailSubject;
	}

	public String getEmailText() {
		return emailText;
	}

	public void setEmailText(String emailText) {
		this.emailText = emailText;
	}

}
