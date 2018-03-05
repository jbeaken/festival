/**
 * Custom JS Use this file to add your custom scripts
 */
// Booking screen
var currentScreen = "contact";
var dev = false
var gaAlreadySent = [];

function showNext() {
	//console.log("Call to showNext currentScreen = " + currentScreen)

	// Validate
	var errors = validate( currentScreen )

	//console.log(errors)

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

	//console.log("Post process screen = " + screen)
	
	$('.booking_screen').hide();
	$(screen).removeClass('hidden')

	$(screen).show()
	$( field ).focus()
	
	sendGA( "/book/" + currentScreen )
}

function fillConfirmation() {
	var booking = getBooking();

	$('div#confirmation_fullname').text(booking.firstname + " " + booking.lastname)
	$('div#confirmation_college').text(booking.college)
	$('div#confirmation_tradeUnion').text(booking.tradeUnion)
	$('div#confirmation_otherMembership').text(booking.otherMembership)
	$('div#confirmation_hearAbout').text(booking.hearAbout)

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

	var price = calculatePrice()

	var intPrice = Math.round ( price * 100 )

	$('input#ticketWebPrice').val( intPrice )
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

	console.log("Post process screen = " + screen)
	$('.booking_screen').hide();
	$(screen).removeClass('hidden')
	$(screen).show()
}

/****************/
/** VALIDATION **/
/****************/

function validateMobile() {

	var booking = getBooking();

	// reset
	$(".form-control").removeClass('field-error')
	$("i.warning_icon").hide()

	var errors = []

	validateField( 'firstname', errors )
	validateField( 'lastname', errors )
	validateField( 'telephone', errors )
	validateField( 'email', errors )
	validateField( 'address1', errors )
	validateField( 'town', errors )
	validateField( 'postcode', errors )
	validateField( 'country', errors )
	validateField( 'ticket', errors )

	console.log( errors )

	if (errors.length > 0) {
		var fieldId = errors[0].field
		console.log("Adding error class to field " + fieldId)

		var field = $('#booking_' + fieldId)

		field.addClass('field-error')
		$('#booking_' + fieldId + '_warning_icon').show();

		//Scroll to error
		$('html, body').animate({
            scrollTop: field.offset().top - 120
        //}, 1000, function() {
        	 //field.focus()
        	 // $('#booking_' + field).next('.help-block').slideDown();
        });


		return false
	}

	return true
}

function validate( screen ) {

	// reset
	$(".form-control").removeClass('field-error')
	$("i.warning_icon").hide()
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
		//validateField( 'under18months', errors )
		//validateField( 'upto5Years', errors )
		//validateField( 'from5to11Years', errors )
	} else if (currentScreen == 'accommodation') {
		validateField( 'accommodation_needs', errors )
	} else if (currentScreen == 'details') {
		validateField( 'hear_about', errors )
	} else if (currentScreen == 'accommodation') {
	} else if (currentScreen == 'creche') {
	} else if (currentScreen == 'ticket') {
		validateTicket(errors)
	}

	if(dev == true) return []; else return errors
}

function validateTicket(errors) {
	var price = calculatePrice()

	if( isNaN( price ) ) {
		errors.push({
			field : 'ticket_id',
			error : ' must be given'
		})
		alert("Please select a valid ticket type")
	}
}

function validateField( field, errors ) {

	var value = $('#booking_' + field).val().trim()

	console.log(field + " : " + value)

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

	console.log(field + " : " + value)

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

	console.log(field + " : " + value)

	if (value == '') {
		errors.push({
			field : field,
			error : ' must be given'
		})
	}
}

/*************/
/** BOOKING **/
/*************/

function editBooking( screen ) {
	currentScreen = screen
	$('button#showNextButton').html('Next');
	showPrevious();
}

function initBookingForMobile() {
	console.log("initBookingForMobile()")

	$('section#section_booking').removeClass('hidden');
	$('.booking_screen').removeClass('hidden')
	$('.booking_screen').show()

	//Scroll to booking
	$('html, body').animate({
        scrollTop: $('#section_booking').offset().top - 120
    //}, 1000, function() {
    	 //field.focus()
    	 // $('#booking_' + field).next('.help-block').slideDown();
    });

	$('#thankyou_screen').hide()
	$('#confirmation_screen').hide()

	// Close collapsed navbar on click
    $('.navbar-collapse').collapse('hide');
}


function getBooking() {
	var booking = {}

	booking.id = $('input#booking_id').val()

	booking.firstname = $('input#booking_firstname').val()
	booking.lastname = $('input#booking_lastname').val()
	booking.college = $('input#booking_college').val()
	booking.tradeUnion = $('input#booking_tradeUnion').val()
	booking.otherMembership = $('input#booking_otherMembership').val()
	booking.hearAbout = $('input#booking_hearAbout').val()

	booking.telephone = $('input#booking_telephone').val()
	booking.email = $('input#booking_email').val()

	booking.address1 = $('input#booking_address1').val()
	booking.address2 = $('input#booking_address2').val()
	booking.town = $('input#booking_town').val()
	booking.country = $('input#booking_country').val()
	booking.postcode = $('input#booking_postcode').val()

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
	booking.ticket = ticket

	booking.id = $('input#booking_id').val()

	console.log("getBooking() : ")
	console.log(booking)

	return booking

}

/***************/
/** SEND EMAIL**/
/***************/

function sendEmail() {

	console.log("sendEmail()")

	var name = $('input#contactFormName').val().trim();
	var message = $('textarea#contactFormMessage').val().trim();
	var email = $('input#contactFormEmail').val().trim();

	//Validation
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
	    	//Reset
	    	$('input#contactFormName').val('')
	    	$('textarea#contactFormMessage').val('')
	    	$('input#contactFormEmail').val('')	    	
	    }
	});
}

function validateContactEmail( email ) {
	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

	if (!filter.test(email)) {
		return false
	}

	return true
}

function openGalleryDefaultSettings() {
	api_images = ['/img/conference/closing_rally.jpg','/img/conference/f_cc1.jpg','/img/conference/f_cc2.jpg'];
	api_titles = ['Title 1','Some Picture of Some Comrades At Some Marxism Festival','Some Picture of Some Comrades At Some Marxism Festival'];
	api_descriptions = ['Here is a description, photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>','Here is a description, photo credit by Guy Smallman 2017','Here is a description, photo credit by Guy Smallman 2017']

	$.fn.prettyPhoto( )
	$.prettyPhoto.open(api_images,api_titles,api_descriptions);
}

function openGallery( theme ) {
	api_images = ['/img/conference/closing_rally.jpg','/img/conference/f_cc1.jpg','/img/conference/f_cc2.jpg','/img/conference/meeting2.jpg'];
	api_titles = [theme,'Some Picture of Some Comrades At Some Marxism Festival','Some Picture of Some Comrades At Some Marxism Festival','Some Picture of Some Comrades At Some Marxism Festival'];
	api_descriptions = ['Here is a description, photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>','Here is a description, photo credit by Guy Smallman 2017','Here is a description, photo credit by Guy Smallman 2017','Here is a description, photo credit by Guy Smallman 2017']

	$.fn.prettyPhoto( {social_tools: false, theme: theme, overlay_gallery: false} )
	$.prettyPhoto.open(api_images,api_titles,api_descriptions);
}
function openGalleryPicnic( theme ) {
	api_images = ['/img/conference/students2.jpg','/img/conference/students3.jpg','/img/conference/students4.jpg','/img/conference/Marxism2014-WideAngle-GS.jpg'];
	api_titles = [theme,'Some Picture of Some Comrades At Some Marxism Festival','Some Picture of Some Comrades At Some Marxism Festival','Some Picture of Some Comrades At Some Marxism Festival'];
	api_descriptions = ['Here is a description, photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>','Here is a description, photo credit by ','Here is a description, photo credit by Guy Smallman 2017','Here is a description, photo credit by Guy Smallman 2017']

	$.fn.prettyPhoto( {social_tools: false, theme: theme, overlay_gallery: false} )
	$.prettyPhoto.open(api_images,api_titles,api_descriptions);
}

function openSwipeBox() {

}

function showMoreSpeakers() {
	$('div#third_row_speakers').show();
	$('div#third_row_speakers').removeClass('hidden');
	$('a#showMoreSpeakersAnchor').hide();
}


/**********************/
/** TICKET SELECTION **/
/**********************/

function toggleTickets() {
	console.log("toggleTickets()")

	var ticketPricing = $('input[name="ticket.pricing"]:checked').val()
	var ticketType = $('select#booking_ticketType').val()

	console.log("selected ticketPricing : " + ticketPricing)
	console.log("selected ticketType : " + ticketType)

	if(ticketType == '' || typeof ticketType == 'undefined') {
		console.log("ticketType is unselected")
		$('div#ticketDayContainer').hide();
		$('div#ticketPricingContainer').hide();
		$('div#ticketAfterPartyContainer').hide();
		$('div#ticketPriceContainer').hide()
		return
	}

	if(ticketPricing == ''  || typeof ticketPricing == 'undefined') {
		console.log("ticketPricing is unselected")
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

	var price = calculatePrice()

	$('div#ticket-price').html('&pound;' + price.toFixed(2));

	$('div#ticketPriceContainer').show()
}



function calculatePrice() {
	var ticketPricing = $('input[name="ticket.pricing"]:checked').val()
	var ticketType = $('select#booking_ticketType').val()
	var afterParty = $('input#afterPartyCheckbox:checked').val()

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

	console.log("price : " + price)

	//Apply discount till March 28
	price = price - 5

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

	console.log("thursday : " + thursday)
	console.log("friday : " + friday)
	console.log("saturday : " + saturday)
	console.log("sunday : " + sunday)
	console.log("getNoOfDaysSelected : " + noOfDays)

	return noOfDays
}

function sendGA( page ) {
	
	var alreadySent = (gaAlreadySent.indexOf(page) === -1 ? false : true)
	
	console.log("ga send to " + page + ", alreadySent = " + alreadySent)
	
	//Don't ga for localhost
	if (document.location.hostname.search("marxismfestival.org.uk") !== -1 || !alreadySent) {
    	
    	console.log("At marxismfestival.org.uk, sending to  " + page)
        
        //Send to google analytics
        ga('send', 'pageview', page);
    	
    	gaAlreadySent.push( page )
	}  
}
