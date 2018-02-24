package org.swp.marxism.domain;

public enum TicketPricing {
	WAGED("Waged"), UNWAGED("Unwaged"), STUDENT_HE("Student HE"), STUDENT_FE("Student FE");

	String displayName;
	
	TicketPricing(String displayName) {
		this.displayName = displayName;
	}
	
	public String getDisplayName() {
		return displayName;
	}
}
