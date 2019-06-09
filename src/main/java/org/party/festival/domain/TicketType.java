package org.party.festival.domain;

public enum TicketType {
	
	FULL("Full"), DAY("Day"), FLEXI("Flexi");

	String displayName;
	
	TicketType(String displayName) {
		this.displayName = displayName;
	}
	
	public String getDisplayName() {
		return displayName;
	}
}
