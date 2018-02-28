package org.swp.marxism.domain;

import java.time.LocalDateTime;
import java.util.Date;

import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

@Entity
public class Booking {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;

	@NotNull
	@Enumerated(EnumType.STRING)
	private BookingStatus status = BookingStatus.UNCONFIRMED;

	@Embedded
	@NotNull
	private Ticket ticket;

	@NotNull
	//private LocalDateTime date = LocalDateTime.now();
	private Date date = new Date();

	@Embedded
	@NotNull
	private Address address;

	@NotNull
	@NotBlank
	private String firstname;

	@NotNull
	@NotBlank
	private String lastname;

	private String college;

	private String tradeUnion;

	@Email
	@NotNull
	private String email;

	private String telephone;

	private String otherMembership;

	@Enumerated(EnumType.STRING)
	private HearAbout hearAbout;

	private String accomodationNeeds;

	private String accomodationContact;

	private Integer childrenUnder18Months;

	private Integer children18MonthsTo5Years;

	private Integer children5YearsTo11years;

	private Boolean allowEmails;

	public Integer getPrice() {

		Integer price = null;

		TicketPricing pricing = getTicket().getPricing();

		switch(getTicket().getType()) {
		case FULL :
			 if(pricing == TicketPricing.WAGED) price = 55;
			 if(pricing == TicketPricing.UNWAGED) price = 30;
			 if(pricing == TicketPricing.STUDENT_HE) price = 30;
			 if(pricing == TicketPricing.STUDENT_FE) price = 20;
			 break;
		 case DAY:
			 Integer noOfDays = getTicket().getNoOfDaysSelected();
			 if(pricing == TicketPricing.WAGED) price = 20;
			 if(pricing == TicketPricing.UNWAGED) price = 15;
			 if(pricing == TicketPricing.STUDENT_HE) price = 15;
			 if(pricing == TicketPricing.STUDENT_FE) price = 10;
			 price = price * noOfDays;
			 break;
		 case FLEXI:
			 if(pricing == TicketPricing.WAGED) price = 20;
			 if(pricing == TicketPricing.UNWAGED) price = 15;
			 if(pricing == TicketPricing.STUDENT_HE) price = 15;
			 if(pricing == TicketPricing.STUDENT_FE) price = 10;
			 break;
		}

		//After party
		if(getTicket().getAfterParty() != null && getTicket().getAfterParty() == true) {
			price += 5;
		}

		//discount till eo March
		price -= 5;

		return price;
	}

	public String getFullname() {
		return getFirstname() + " " + getLastname();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Ticket getTicket() {
		return ticket;
	}

	public void setTicket(Ticket ticket) {
		this.ticket = ticket;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public String getOtherMembership() {
		return otherMembership;
	}

	public void setOtherMembership(String otherMembership) {
		this.otherMembership = otherMembership;
	}

	public String getAccomodationNeeds() {
		return accomodationNeeds;
	}

	public void setAccomodationNeeds(String accomodationNeeds) {
		this.accomodationNeeds = accomodationNeeds;
	}

	public String getAccomodationContact() {
		return accomodationContact;
	}

	public void setAccomodationContact(String accomodationContact) {
		this.accomodationContact = accomodationContact;
	}

	public Integer getChildrenUnder18Months() {
		return childrenUnder18Months;
	}

	public void setChildrenUnder18Months(Integer childrenUnder18Months) {
		this.childrenUnder18Months = childrenUnder18Months;
	}

	public Integer getChildren18MonthsTo5Years() {
		return children18MonthsTo5Years;
	}

	public void setChildren18MonthsTo5Years(Integer children18MonthsTo5Years) {
		this.children18MonthsTo5Years = children18MonthsTo5Years;
	}

	public Integer getChildren5YearsTo11years() {
		return children5YearsTo11years;
	}

	public void setChildren5YearsTo11years(Integer children5YearsTo11years) {
		this.children5YearsTo11years = children5YearsTo11years;
	}

	public Boolean getAllowEmails() {
		return allowEmails;
	}

	public void setAllowEmails(Boolean allowEmails) {
		this.allowEmails = allowEmails;
	}

	public HearAbout getHearAbout() {
		return hearAbout;
	}

	public void setHearAbout(HearAbout hearAbout) {
		this.hearAbout = hearAbout;
	}

	public BookingStatus getStatus() {
		return status;
	}

	public void setStatus(BookingStatus status) {
		this.status = status;
	}

	public String getTradeUnion() {
		return tradeUnion;
	}

	public void setTradeUnion(String tradeUnion) {
		this.tradeUnion = tradeUnion;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getOrderId() {
		return "MRX" + getId();
	}

	@Override
	public String toString() {
		return "Booking [id=" + id + ", status=" + status + ", ticket=" + ticket + ", date=" + date + ", address=" + address + ", firstname=" + firstname + ", lastname=" + lastname + ", college=" + college + ", tradeUnion=" + tradeUnion + ", email=" + email + ", telephone=" + telephone
				+ ", otherMembership=" + otherMembership + ", hearAbout=" + hearAbout + ", accomodationNeeds=" + accomodationNeeds + ", accomodationContact=" + accomodationContact + ", childrenUnder18Months=" + childrenUnder18Months + ", children18MonthsTo5Years=" + children18MonthsTo5Years
				+ ", children5YearsTo11years=" + children5YearsTo11years + ", allowEmails=" + allowEmails + "]";
	}

}
