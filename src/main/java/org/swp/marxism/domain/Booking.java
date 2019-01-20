package org.swp.marxism.domain;

import java.util.Date;

import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;


@Entity
public class Booking extends MarxismEntity {

	@NotNull
	@Enumerated(EnumType.STRING)
	private BookingStatus status = BookingStatus.UNCONFIRMED;

	@Embedded
	@NotNull
	private Ticket ticket;

	@NotNull
	//private LocalDateTime date = LocalDateTime.now();
	private Date date = new Date();

	@NotNull
	private Boolean isActioned = false;

	private String discountCode;
	
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

	private String accommodationNeeds;

	private String accommodationContact;

	private Integer childrenUnder18Months;

	private Integer children18MonthsTo5Years;

	private Integer children5YearsTo11years;

	public Boolean getRequiresCreche() {
		if((childrenUnder18Months != null && childrenUnder18Months > 0) 
				|| (children18MonthsTo5Years != null && children18MonthsTo5Years > 0)
				|| (children5YearsTo11years != null && children5YearsTo11years > 0)) return true;
		return false;
	}

	public String getFullname() {
		return getFirstname() + " " + getLastname();
	}

	public Boolean getIsActioned() {
		return isActioned;
	}

	public void setIsActioned(Boolean isActioned) {
		this.isActioned = isActioned;
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

	public String getAccommodationNeeds() {
		return accommodationNeeds;
	}

	public void setAccommodationNeeds(String accommodationNeeds) {
		this.accommodationNeeds = accommodationNeeds;
	}

	public String getAccommodationContact() {
		return accommodationContact;
	}

	public void setAccommodationContact(String accommodationContact) {
		this.accommodationContact = accommodationContact;
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

	@Override
	public String toString() {
		return "Booking [id=" + getId() + ", status=" + status + ", ticket=" + ticket + ", date=" + date + ", address=" + address + ", firstname=" + firstname + ", lastname=" + lastname + ", college=" + college + ", tradeUnion=" + tradeUnion + ", email=" + email + ", telephone=" + telephone
				+ ", otherMembership=" + otherMembership + ", hearAbout=" + hearAbout + ", accommodationNeeds=" + accommodationNeeds + ", accommodationContact=" + accommodationContact + ", childrenUnder18Months=" + childrenUnder18Months + ", children18MonthsTo5Years=" + children18MonthsTo5Years
				+ ", children5YearsTo11years=" + children5YearsTo11years + "]";
	}

	public String getDiscountCode() {
		return discountCode;
	}

	public void setDiscountCode(String discountCode) {
		this.discountCode = discountCode;
	}

}
