package org.party.festival.domain;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

@Converter(autoApply = true)
public class StatusConverter implements AttributeConverter<BookingStatus, String> {

	@Override
	public String convertToDatabaseColumn(BookingStatus status) {
		switch (status) {
		case CANCELLED:
			return "C";
		case PAID:
			return "P";
		case PAYMENT_FAILED:
			return "F";
		case UNCONFIRMED:
			return "U";
		default:
			throw new UnsupportedOperationException("No converter for " + status);
		}
	}

	@Override
	public BookingStatus convertToEntityAttribute(String dbData) {
		if(dbData.equals("C"))return BookingStatus.CANCELLED;
		if(dbData.equals("P"))return BookingStatus.PAID;
		if(dbData.equals("F"))return BookingStatus.PAYMENT_FAILED;
		if(dbData.equals("U"))return BookingStatus.UNCONFIRMED;
		throw new UnsupportedOperationException("No converter for " + dbData);
	}
}
