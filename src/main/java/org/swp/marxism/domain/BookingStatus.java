package org.swp.marxism.domain;

public enum BookingStatus {
	UNCONFIRMED("Unconfirmed"),           
	PENDING_BARCLAYS_WEBHOOK("Lapsed"),
	CANCELLED("Cancelled"),
	PAYMENT_FAILED("Payment Failed"),
	PAID("Paid");
	
	String displayName;
	
	BookingStatus(String displayName) {
		this.displayName = displayName;
	}
	
	public String getDisplayName() {
		return displayName;
	}
}
