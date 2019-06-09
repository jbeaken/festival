package org.party.festival.amqp;

import java.time.LocalDateTime;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.party.festival.domain.Booking;

@Component
public class MessageProducer {

	@Autowired
	private RabbitTemplate rabbitTemplate;
	
	protected static final Logger logger = LoggerFactory.getLogger(MessageProducer.class);

	@Value("${rabbitmq.exchange.name}")
	private String exchangeName;

	public void send(Booking booking, String orderId) {
		BookingMessage message = new BookingMessage(booking);
		
		message.setOrderId(orderId);
		
		logger.debug("Emitting message to {} booking.complete", exchangeName);
		
		rabbitTemplate.convertAndSend(exchangeName, "booking.complete", message);
		
		logger.debug("Done");
	}

	public void sendHome() {
		String message = "Home Clicked";
		
		logger.debug("Emitting message to {} home.clicked", exchangeName);
		
		rabbitTemplate.convertAndSend(exchangeName, "home.clicked", message);
		
		logger.debug("Done");
	}
}

class BookingMessage {

	LocalDateTime timeOfBooking;
	String ticketType;
	String ticketPricing;
	String orderId;

	public BookingMessage(Booking booking) {
		this();
		timeOfBooking = LocalDateTime.now();
		
		this.ticketType = booking.getTicket().getType().getDisplayName();
		this.ticketPricing = booking.getTicket().getPricing().getDisplayName();
	}

	public BookingMessage() {
		super();
	}

	public LocalDateTime getTimeOfBooking() {
		return timeOfBooking;
	}

	public void setTimeOfBooking(LocalDateTime timeOfBooking) {
		this.timeOfBooking = timeOfBooking;
	}

	public String getTicketType() {
		return ticketType;
	}

	public void setTicketType(String ticketType) {
		this.ticketType = ticketType;
	}

	public String getTicketPricing() {
		return ticketPricing;
	}

	public void setTicketPricing(String ticketPricing) {
		this.ticketPricing = ticketPricing;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

}
