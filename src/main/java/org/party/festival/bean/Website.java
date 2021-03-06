package org.party.festival.bean;

import lombok.Data;

import java.util.List;

@Data
public class Website extends AbstractBean {

	private static final long serialVersionUID = -2458604900857882516L;

	private String name;

	private Integer year;

	private Boolean isLive;

	private Boolean isDev;

	//Payments
	private String paymentUrl;

	//About Section
	private String aboutHeading;
	private String aboutLine2;
	private String aboutLine3;
	private String aboutText;

	//Social Media
	private String websiteUrl;
	private String websiteDescription;

	private String facebookEvent;
	private String facebookPage;

	private String twitterHandle;
	private String twitterPage;

	private String instagramPage;

	//Pricing Section
	private String pricingHeading;
	private String pricingText;

	//Meetings Section
	private String meetingHeading;

	//Speaker Section
	private String speakerHeading;
	
	//Booking section
	private String bookingAfterPartyText;
	private String bookingClosedMessage;

	//Confirmation Email
	private String emailSubject;
	private String emailText;

	private Integer pricingFullEventWaged;
	private Integer pricingFullEventUnwaged;
	private Integer pricingFullEventHE;
	private Integer pricingFullEventFE;

	private Integer pricingDayTicketWaged;
	private Integer pricingDayTicketUnwaged;
	private Integer pricingDayTicketHE;
	private Integer pricingDayTicketFE;

	private Integer pricingFlexiTicketWaged;
	private Integer pricingFlexiTicketUnwaged;
	private Integer pricingFlexiTicketHE;
	private Integer pricingFlexiTicketFE;

	//Contact Section
	private String contactHeading;
	private String contactLine2;
	private String contactTelephone;
	private String contactEmail;
	private String contactAddress1;
	private String contactAddress2;
	private String contactAddress3;
	private String contactAddress4;

	//Theme Section
	private String themeHeading;

	//Discount
	private String earlyBirdDiscountText;
	private Boolean showEarlyBirdDiscount;
	private Integer earlyBirdDiscountAmount;
	
	private String discountCode;
	private Integer discountCodeAmount;
	private Boolean showDiscountCode;

	//Video
	private String videoUrl;

	//External links
	private String audioUrl;
	private String videosUrl;
	private String galleryUrl;

	//Json
	private String meetingsJson;
	
	private String jsonDaysAndTimes;

	private String themesJson;
	
	private Day[] days;
	
	private List<Speaker> speakers;

	private List<Theme> themes;

	private List<CarouselItem> carouselItems;

	private List<CultureItem> cultureItems;

	private List<About> abouts;

	//Visiblity
	private Boolean showThemes;
	private Boolean showPricing;
	private Boolean showGallery;
	private Boolean showSpeakers;
	private Boolean showMeetings;
	private Boolean showBooking;
	private Boolean showContact;
	private Boolean showAbout;
	private Boolean showVideo;
	private Boolean showCultureItems;
	private Boolean showMeetingVenues;
}
