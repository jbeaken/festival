/**
 * Custom JS Use this file to add your custom scripts
 */
// Booking screen
var currentScreen = "contact";
var gaAlreadySent = [];
var bookingPassedValidation = false;

function showNext() {
	console.log("Call to showNext currentScreen = " + currentScreen)

	// Validate
	var errors = validate( currentScreen )

	console.log(errors)

	if (errors.length > 0) {
		var field = errors[0].field
		console.log("Adding error class to field " + field)
		$('#booking_' + field).focus()
		$('#booking_' + field).addClass('field-error')
		$('#booking_' + field + '_warning_icon').show();
		// $('#booking_' + field).next('.help-block').slideDown();
		return;
	}

	var screen = "";
	var field = "";

	if (currentScreen == 'contact') {
		screen = 'details'
		field = '#booking_tradeUnion'
		$($('button#showPreviousButton')).removeClass('hidden')
	} else if (currentScreen == 'details') {
		screen = 'address'
		field = '#booking_address1'
	} else if (currentScreen == 'address') {
		screen = 'accommodation'
		field = '#booking_accommodation_needs'
	} else if (currentScreen == 'accommodation') {
		screen = 'creche'
		field = '#booking_under18months'
	} else if (currentScreen == 'creche') {
		screen = 'ticket'
		field = '#booking_ticketType'
		toggleTickets()
	} else if (currentScreen == 'ticket') {

		screen = 'confirmation'

		fillConfirmation();

		$('button#showNextButton').html('Go To Secure Payment Screen');

	} else if (currentScreen == 'confirmation') {
		bookingPassedValidation = true
		
		var email = $('input#booking_email').val().trim();
		$('input#booking_email').val( email )
		
		$('form#booking-form').submit();

	    return;
	}

	if (screen == 'accommodation') {
		if ($('input#accomdationRequiredNo').is(":checked") == true) {
			screen = 'creche'
		}
	}

	if (screen == 'creche') {
		if ($('input#crecheRequiredRadioNo').is(":checked") == true) {
			screen = 'ticket'
			toggleTickets()
		}
	}

	currentScreen = screen

	screen = "#" + screen + "_screen"

	// console.log("Post process screen = " + screen)
	
	$('.booking_screen').hide();
	$(screen).removeClass('hidden')

	$(screen).show()
	$( field ).focus()
	
	sendGA( "/book/" + currentScreen )
}

function downloadTimetable() {
	var r = confirm("Please confirm you wish to download a PDF timetable for Marxism Festival 2018");
	
	if (r == true) {
		sendGA( "/timetable/pdf" )
		window.location.href = '/timetable';
	} 	
}

function downloadTimetableNoPrompt() {
	sendGA( "/timetable/pdf" )
	window.location.href = '/timetable';
}

function fillConfirmation() {
	var booking = getBooking();

	$('div#confirmation_fullname').text(booking.firstname + " " + booking.lastname)
	$('div#confirmation_college').text(booking.college)
	$('div#confirmation_tradeUnion').text(booking.tradeUnion)
	$('div#confirmation_other_membership').text(booking.otherMembership)
	$('div#confirmation_hear_about').text(booking.hearAbout)

	$('div#confirmation_telephone').text(booking.telephone)
	$('div#confirmation_email').text(booking.email)

	$('div#confirmation_address1').text(booking.address1)
	$('div#confirmation_address2').text(booking.address2)
	$('div#confirmation_town').text(booking.town)
	$('div#confirmation_country').text(booking.country)
	$('div#confirmation_postcode').text(booking.postcode)


	if(booking.creche != null) {
		$('div#confirmation_creche_under18months').text(booking.creche.under18months)
		$('div#confirmation_creche_upto5Years').text(booking.creche.upto5Years)
		$('div#confirmation_creche_from5to11Years').text(booking.creche.from5to11Years)
		$('div#confirmation_creche').show()
	} else {
		$('div#confirmation_creche').hide()
	}

	if(booking.accommodation != null) {
		$('div#confirmation_accommodation_needs').text(booking.accommodation.needs)
		$('div#confirmation_accommodation_contact').text(booking.accommodation.friend)
		$('div#confirmation_accommodation').show()
	} else {
		$('div#confirmation_accommodation').hide()
	}
	
	var discount = getDiscount();
	if(discount != null) {
		$('div#confirmation_discount_code').text("Your discount code " + booking.discountCode + " has been applied")
		$('div#confirmation_discount_code').show()
	} else {
		$('div#confirmation_discount_code').hide()
	}

	var price = calculatePrice()

	var intPrice = Math.round ( price * 100 )
//	console.log(price)
//	console.log(intPrice)
	$('input#ticketWebPrice').val( intPrice )
	$('div#confirmation_web_price').html('&pound;' + price.toFixed(2));
}

function showPrevious() {
	console.log("Call to showPrevious currentScreen = " + currentScreen)

	var screen = "";

	if (currentScreen == 'contact') {
		// Should never happen
	} else if (currentScreen == 'details') {
		screen = 'contact'
		$('button#showPreviousButton').addClass('hidden')
	} else if (currentScreen == 'address') {
		screen = 'details'
	} else if (currentScreen == 'ticket') {
		screen = 'creche'
	} else if (currentScreen == 'creche') {
		screen = 'accommodation'
	} else if (currentScreen == 'accommodation') {
		screen = 'address'
	} else if (currentScreen == 'confirmation') {
		$('button#showNextButton').html('Next');
		screen = 'ticket'
	}

	if (screen == 'creche') {
		if ($('input#crecheRequiredRadioNo').is(":checked") == true) {
			screen = 'accommodation'
		}
	}

	if (screen == 'accommodation') {
		if ($('input#accomdationRequiredNo').is(":checked") == true) {
			screen = 'address'
		}
	}

	currentScreen = screen

	screen = "#" + screen + "_screen"

// console.log("Post process screen = " + screen)
	$('.booking_screen').hide();
	$(screen).removeClass('hidden')
	$(screen).show()
}

function populateBookingFormForDev() {
	console.log("populateBookingFormForDev")
	$('input#booking_firstname').val('john')
	$('input#booking_lastname').val('harry')
	$('input#booking_college').val('college')
	$('input#booking_tradeUnion').val('trade union')
	$('input#booking_otherMembership').val('other membership')
	$('select#booking_hear_about').val('BeenBefore')

	$('input#booking_telephone').val('telephone')
	$('input#booking_email').val('email@email.com')

	$('input#booking_address1').val('address1')
	$('input#booking_address2').val('address2')
	$('input#booking_town').val('town')
	$('input#booking_country').val('country')
	$('input#booking_postcode').val('postcode')
}

/** ************* */
/** VALIDATION * */
/** ************* */
function validate( screen ) {

	// reset
	$(".form-control").removeClass('field-error')
	$("ion-icon.warning_icon").hide()
	
	var errors = []

	if (screen == 'contact') {
		validateField( 'firstname', errors )
		validateField( 'lastname', errors )
		validateField( 'telephone', errors )
		validateEmail( 'email', errors )
	} else if (currentScreen == 'address') {
		validateField( 'address1', errors )
		validateField( 'town', errors )
		validateField( 'postcode', errors )
		validateField( 'country', errors )
	} else if (currentScreen == 'creche') {
		// validateField( 'under18months', errors )
		// validateField( 'upto5Years', errors )
		// validateField( 'from5to11Years', errors )
	} else if (currentScreen == 'accommodation') {
		validateField( 'accommodation_needs', errors )
	} else if (currentScreen == 'details') {
		validateField( 'hear_about', errors )
	} else if (currentScreen == 'accommodation') {
	} else if (currentScreen == 'creche') {
	} else if (currentScreen == 'ticket') {
		validateTicket(errors)
	}

	return errors
}

function validateTicket(errors) {
	var price = calculatePrice()

	if( isNaN( price ) ) {
		errors.push({
			field : 'ticket_id',
			error : ' must be given'
		})
		alert("Please select a valid ticket type")
		return
	}

	var ticketPricing = $('input[name="ticket.pricing"]:checked').val()
	console.log("ticketPricing = " + ticketPricing)

	if(ticketPricing == 'STUDENT_FE' || ticketPricing == 'STUDENT_HE') {
		//There are two fields for college, so check other field hasn't already been filled
		var college = $('input#booking_college').val() +  $('input#booking_college2').val()
		console.log("college = " + college)
		if(college.trim() == '') {
			errors.push({
				field : 'ticket_id',
				error : ' must be given'
			})
			alert("Please enter your school or college to get discount")
		}
	}

}

function validateField( field, errors ) {

	var value = $('#booking_' + field).val().trim()

// console.log(field + " : " + value)

	if (value == '') {
		errors.push({
			field : field,
			error : ' must be given'
		})
	}
}

function validateEmail( field, errors ) {
	var value = $('#booking_' + field).val().trim()

    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

	if( re.test( String( value ).toLowerCase() ) == false ) {
    	errors.push({
			field : field,
			error : ' invalid email'
		})
    };
}

function validateNumber(field, errors) {

	var value = $('#booking_' + field).val()

// console.log(field + " : " + value)

	if (value == '') {
		errors.push({
			field : field,
			error : ' must be given'
		})
	}

	if( !isNaN(parseFloat(value)) && isFinite(value) ) {
		errors.push({
			field : field,
			error : ' is not a valid number'
		})
	}
}

function validateSelect(field, errors) {
	var value = $('#booking_' + field).val()

// console.log(field + " : " + value)

	if (value == '') {
		errors.push({
			field : field,
			error : ' must be given'
		})
	}
}

/** ********** */
/** BOOKING * */
/** ********** */

function editBooking( screen ) {
	currentScreen = screen
	$('button#showNextButton').html('Next');
	showPrevious();
}

function getBooking() {
	var booking = {}

	booking.id = $('input#booking_id').val()

	booking.firstname = $('input#booking_firstname').val()
	booking.lastname = $('input#booking_lastname').val()
	booking.college = $('input#booking_college').val() + "-" + $('input#booking_college2').val()
	booking.tradeUnion = $('input#booking_tradeUnion').val()
	booking.otherMembership = $('input#booking_otherMembership').val()
	booking.hearAbout = $('select#booking_hear_about').val()

	booking.telephone = $('input#booking_telephone').val()
	booking.email = $('input#booking_email').val()

	booking.address1 = $('input#booking_address1').val()
	booking.address2 = $('input#booking_address2').val()
	booking.town = $('input#booking_town').val()
	booking.country = $('input#booking_country').val()
	booking.postcode = $('input#booking_postcode').val()
	booking.discountCode = $('input#booking_discount').val()

	//College has two fields
	booking.college = $('input#booking_college').val()
	var college2 = $('input#booking_college2').val()

	if(college2.trim() != '') booking.college += "-" + college2

	if ($('input#crecheRequiredRadioYes').is(":checked") == true) {
		console.log("buidling crech")
		var creche = {}
		creche.under18months = $('select#booking_under18months').val()
		creche.upto5Years = $('select#booking_upto5Years').val()
		creche.from5to11Years = $('select#booking_from5to11Years').val()
		booking.creche = creche
	}

	if ($('input#accomdationRequiredYes').is(":checked") == true) {
		var accommodation = {}
		accommodation.friend = $('input#booking_accommodation_contact').val()
		accommodation.needs = $('textarea#booking_accommodation_needs').val()
		booking.accommodation = accommodation
	}

	var ticket = {}
	ticket.id = $('select#booking_ticket').val()
	ticket.webPrice = $('input#ticketWebPrice').val()
	booking.ticket = ticket

	booking.id = $('input#booking_id').val()

// console.log("getBooking() : ")
// console.log(booking)

	return booking

}

/** ************ */
/** SEND EMAIL* */
/** ************ */

function sendEmail() {

// console.log("sendEmail()")

	var name = $('input#contactFormName').val().trim();
	var message = $('textarea#contactFormMessage').val().trim();
	var email = $('input#contactFormEmail').val().trim();

	// Validation
	if(name === "") {
		alert("Please enter a valid name")
		return
	}
	if(message === "") {
		alert("Please enter a valid message")
		return
	}
	if(email === "") {
		alert("Please enter a valid email")
		return
	}


	if (!validateContactEmail( email )) {
		alert("Please enter a valid email!")
		return
	}

	$.post( "/sendEmail", { email: email, message: message, name : name } ).done(function( data ) {
	    console.log( "Message sent to server, response : " + data );

	    if(data === 'error') {
	    	alert("There was an error sending your message. Please phone 020 7840 5620")
	    }

	    if(data === 'success') {
	    	alert("Your message was sent successfully. We will respond as quickly as possible")
	    	// Reset
	    	$('input#contactFormName').val('')
	    	$('textarea#contactFormMessage').val('')
	    	$('input#contactFormEmail').val('')	    	
	    }
	});
	
	sendGA( '/sendEmail' ) 
}

function validateContactEmail( email ) {
	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

	if (!filter.test(email)) {
		return false
	}

	return true
}

function showMoreSpeakers() {
	$('div#third_row_speakers').show();
	$('div#third_row_speakers').removeClass('hidden');
	$('a#showMoreSpeakersAnchor').hide();
}

function writeTimes( day, time ) {
	
	var times = daysAndTimes[ day ]
	
	//Default to first time slot
	if (time === undefined) time = times[0]

	$('ul#meetings__day__list > li > a').removeClass('selected')

	$('ul#meetings__day__list > li > a#' + day).addClass('selected');

	$('ul#meetings__time__list > li > a').removeClass('selected')
	
	var text = ""
		
	for(i = 0; i < times.length; i++) {
		text += getTimeText( day, times[i], time);
	}
		
	return text
}

function getTimeText( day, time, originalTime ) {
	var clazz = 'meeting__time__anchor'
	if(time === originalTime) {
		clazz = "selected"
	}
	return "<li><a id=\"" + time + "\" class=\"" + clazz + "\" onclick=\"javascript:writeMeetings('" + day + "', '" + time + "')\">" + time + "</a></li>"
}

function writeMeetings( day, time) {
	var html = '';
	
	var meetingList = getMeetingsByDayAndTime( day, time)
	
	for(i = 0; i < meetingList.length; i++) {
		
		var meeting = meetingList[i]
		
		html = html + meeting.html
	}
	
	$('div#meetings__holder').html( html )
	
	var timesHtml = writeTimes( day, time )
	
	$('ul#meetings__time__list').html( timesHtml )
}

function getMeetingsByDayAndTime( day, time ) {
	var result = []
	
	for(i = 0; i < meetings.length; i++) {
		
		var meeting = meetings[i]
		
		if(day != null) {
			if(meeting.day != day) continue
		}
		
		if(time != null) {
			if(meeting.time != time) continue
		}	
		
		result.push( meeting )
	}
	
	return result
}


/** ******************* */
/** TICKET SELECTION * */
/** ******************* */

function toggleTickets() {
	console.log("toggleTickets()")

	var ticketPricing = $('input[name="ticket.pricing"]:checked').val()
	var ticketType = $('select#booking_ticketType').val()

	console.log("selected ticketPricing : " + ticketPricing)
	console.log("selected ticketType : " + ticketType)

	if(ticketType == '' || typeof ticketType == 'undefined') {
		$('div#ticketDayContainer').hide();
		$('div#ticketPricingContainer').hide();
		$('div#ticketAfterPartyContainer').hide();
		$('div#ticketPriceContainer').hide()
		return
	}

	if(ticketPricing == ''  || typeof ticketPricing == 'undefined') {
		$('div#ticketPricingContainer').show();
		$('div#ticketDayContainer').hide();
		$('div#ticketAfterPartyContainer').hide();
		$('div#ticketPriceContainer').hide()
		return
	}

	$('div#ticketPricingContainer').show();

	switch (ticketType) {
		 case "FULL" :
			 $('div#ticketAfterPartyContainer').show();
			 $('div#ticketDayContainer').hide();
			 break;
		 case "DAY" :
			 $('div#ticketDayContainer').show();
			 $('div#ticketAfterPartyContainer').show();
			 if(isDaySelected() == false) {
				 $('div#ticketPriceContainer').hide()
				 $('div#ticketAfterPartyContainer').hide();
				 return;
			 }
			 break;
		 case "FLEXI" :
			 $('div#ticketDayContainer').hide();
			 $('div#ticketAfterPartyContainer').show();
			 break;
		 default:
	}

	if(ticketPricing == 'STUDENT_FE' || ticketPricing == 'STUDENT_HE') {
		console.log("is student");
		$('div#collegeSchoolContainer').show();
	} else {
		$('div#collegeSchoolContainer').hide();
	}

	var price = calculatePrice()

	$('div#ticket-price').html('&pound;' + price.toFixed(2));

	$('div#ticketPriceContainer').show()
}

function getDiscount() {
	
	if(showDiscountCode == false) return null
	var discount = $('input#booking_discount').val().trim()
	
	if(discount.length != discountCode.length) return
	
	discount = discount.toLowerCase();
	
	console.log( discount + " discount");
	
	if(discount === discountCode.toLowerCase()) {
		return discountCodeAmount;
	}
	
	return null;
}

function changeDiscount() {
	
	var discount = getDiscount()
	
	if(discount != null) {
		$('span#discount_applied_text').show()
	} else {
		$('span#discount_applied_text').hide()
	}
	
	toggleTickets()	
}

function calculatePrice() {
	var ticketPricing = $('input[name="ticket.pricing"]:checked').val()
	var ticketType = $('select#booking_ticketType').val()
	var afterParty = $('input#afterPartyCheckbox:checked').val()
	var discount = getDiscount();

	var price;

	switch (ticketType) {
		 case "FULL":
			 if(ticketPricing == 'WAGED') price = 55;
			 if(ticketPricing == 'UNWAGED') price = 30;
			 if(ticketPricing == 'STUDENT_HE') price = 30;
			 if(ticketPricing == 'STUDENT_FE') price = 20;
			 break;
		 case "DAY":
			 var noOfDays = getNoOfDaysSelected();
			 if(noOfDays == 0) return NaN;
			 if(ticketPricing == 'WAGED') price = 20;
			 if(ticketPricing == 'UNWAGED') price = 15;
			 if(ticketPricing == 'STUDENT_HE') price = 15;
			 if(ticketPricing == 'STUDENT_FE') price = 10;
			 price = price * noOfDays
			 break;
		 case "FLEXI":
			 if(ticketPricing == 'WAGED') price = 20;
			 if(ticketPricing == 'UNWAGED') price = 15;
			 if(ticketPricing == 'STUDENT_HE') price = 15;
			 if(ticketPricing == 'STUDENT_FE') price = 10;
			 break;
		 default:
		break;
	}

	if(afterParty == 'on') price = price + 5;
	
	if(discount != null) {
		price = price * 0.9
	}

//	console.log("price : " + price)

	if( showEarlyBirdDiscount == true) price = price - earlyBirdDiscountAmount

	return price
}

function isDaySelected() {
	var thursday = $('select#dayTicketThursday').val()
	var friday = $('select#dayTicketFriday').val()
	var saturday = $('select#dayTicketSaturday').val()
	var sunday = $('select#dayTicketSunday').val()

	if(thursday == '' && friday == '' && saturday == '' && sunday == '') return false;

	return true
}


function getNoOfDaysSelected() {
	var noOfDays = 0

	var thursday = parseInt( $('select#dayTicketThursday').val() )
	var friday = parseInt( $('select#dayTicketFriday').val() )
	var saturday = parseInt( $('select#dayTicketSaturday').val() )
	var sunday = parseInt( $('select#dayTicketSunday').val() )

	if(!isNaN( thursday )) noOfDays += thursday
	if(!isNaN( friday )) noOfDays += friday
	if(!isNaN( saturday )) noOfDays += saturday
	if(!isNaN( sunday )) noOfDays += sunday

// console.log("thursday : " + thursday)
// console.log("friday : " + friday)
// console.log("saturday : " + saturday)
// console.log("sunday : " + sunday)
// console.log("getNoOfDaysSelected : " + noOfDays)

	return noOfDays
}

function sendGA( page ) {
	
	var alreadySent = (gaAlreadySent.indexOf(page) === -1 ? false : true)
	
	console.log("ga send to " + page + ", alreadySent = " + alreadySent)
	
	// Don't ga for localhost
	if (document.location.hostname.search("marxismfestival.org.uk") !== -1 && !alreadySent) {
    	
        // Send to google analytics
        ga('send', 'pageview', page);
    	
    	gaAlreadySent.push( page )
	}  
}

function showMoreSpeakers() {
	$('div.more-speakers').show();
	$('a#showMoreSpeakersAnchor').hide();
	
	sendGA( '/showMoreSpeakers' )
}
