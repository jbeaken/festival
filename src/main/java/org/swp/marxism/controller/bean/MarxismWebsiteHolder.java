package org.swp.marxism.controller.bean;

import java.util.List;

import org.swp.marxism.domain.MarxismWebsite;
import org.swp.marxism.domain.Meeting;
import org.swp.marxism.domain.Venue;


public class MarxismWebsiteHolder {
	private MarxismWebsite marxismWebsite;
	
	private List<Meeting> meetings;
	
	private List<Venue> venues;
	
	public MarxismWebsite getMarxismWebsite() {
		return marxismWebsite;
	}
	public void setMarxismWebsite(MarxismWebsite marxismWebsite) {
		this.marxismWebsite = marxismWebsite;
	}
	public List<Meeting> getMeetings() {
		return meetings;
	}
	public void setMeetings(List<Meeting> meetings) {
		this.meetings = meetings;
	}
	
	@Override
	public String toString() {
		return "MarxismWebsiteHolder [marxismWebsite=" + marxismWebsite + "]";
	}
	public List<Venue> getVenues() {
		return venues;
	}
	public void setVenues(List<Venue> venues) {
		this.venues = venues;
	}

}
