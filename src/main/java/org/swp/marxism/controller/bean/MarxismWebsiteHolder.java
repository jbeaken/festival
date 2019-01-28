package org.swp.marxism.controller.bean;

import java.util.List;

import org.swp.marxism.domain.MarxismWebsite;
import org.swp.marxism.domain.Meeting;


public class MarxismWebsiteHolder {
	private MarxismWebsite marxismWebsite;
	
	private List<Meeting> meetings;
	
	
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

}
