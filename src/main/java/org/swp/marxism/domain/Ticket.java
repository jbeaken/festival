package org.swp.marxism.domain;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

@Embeddable
public class Ticket {
	
	@Enumerated(EnumType.STRING)
	@Column(name="ticket_type", nullable=false)
	@NotNull
	private TicketType type;
	
	@Enumerated(EnumType.STRING)
	@Column(name="ticket_pricing", nullable=false)
	@NotNull
	private TicketPricing pricing;
	
	@Column(name="ticket_web_price")
	@NotNull
	private String webPrice;
	
	private Integer thursday;
	
	private Integer friday;
	
	private Integer saturday;
	
	private Integer sunday;
	
	private Boolean afterParty;
	
	public String getDays() {
		StringBuilder days = new StringBuilder();
		
		if(thursday != null) days.append("T ");
		if(friday != null) days.append("F ");
		if(saturday != null) days.append("Sa ");
		if(sunday != null) days.append("Su");
		
		return days.toString();
	}

	public TicketType getType() {
		return type;
	}

	public void setType(TicketType type) {
		this.type = type;
	}

	public TicketPricing getPricing() {
		return pricing;
	}

	public void setPricing(TicketPricing pricing) {
		this.pricing = pricing;
	}

	public Integer getThursday() {
		return thursday;
	}

	public void setThursday(Integer thursday) {
		this.thursday = thursday;
	}

	public Integer getFriday() {
		return friday;
	}

	public void setFriday(Integer friday) {
		this.friday = friday;
	}

	public Integer getSaturday() {
		return saturday;
	}

	public void setSaturday(Integer saturday) {
		this.saturday = saturday;
	}

	public Integer getSunday() {
		return sunday;
	}

	public void setSunday(Integer sunday) {
		this.sunday = sunday;
	}

	public Boolean getAfterParty() {
		return afterParty;
	}

	public void setAfterParty(Boolean afterParty) {
		this.afterParty = afterParty;
	}

	public Integer getNoOfDaysSelected() {
		int noOfDaysSelected = 0;
		if(thursday != null) noOfDaysSelected += thursday;
		if(friday != null) noOfDaysSelected += friday;
		if(saturday != null) noOfDaysSelected += saturday;
		if(sunday != null) noOfDaysSelected += sunday;
		
		return noOfDaysSelected;
	}

	public String getWebPrice() {
		return webPrice;
	}

	public void setWebPrice(String webPrice) {
		this.webPrice = webPrice;
	}

	@Override
	public String toString() {
		return "Ticket [type=" + type + ", pricing=" + pricing + ", webPrice=" + webPrice + ", thursday=" + thursday + ", friday=" + friday + ", saturday=" + saturday + ", sunday=" + sunday + ", afterParty=" + afterParty + "]";
	}

	
}
