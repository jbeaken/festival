/**
 * Custom JS Use this file to add your custom scripts
 */
// Booking screen
var currentScreen = "contact";
var dev = true

function showNext() {
	console.log("Call to showNext currentScreen = " + currentScreen)

	// Validate
	var errors = validate(currentScreen)

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

	if (currentScreen == 'contact') {
		screen = 'address'
		$($('button#showPreviousButton')).removeClass('hidden')
	} else if (currentScreen == 'address') {
		screen = 'accomodation'
	} else if (currentScreen == 'accomodation') {
		screen = 'creche'
	} else if (currentScreen == 'creche') {
		screen = 'ticket'
	} else if (currentScreen == 'ticket') {
		screen = 'confirmation'
		$('button#showNextButton').html('Go To Secure Payment Screen');
	} else if (currentScreen == 'confirmation') {
		screen = 'thankyou'
		sendBooking()
	}

	if (screen == 'accomodation') {
		if ($('input#accomdationRequiredNo').is(":checked") == true) {
			screen = 'creche'
		}
	}

	if (screen == 'creche') {
		if ($('input#crecheRequiredRadioNo').is(":checked") == true) {
			screen = 'ticket'
		}
	}

	currentScreen = screen

	screen = "#" + screen + "_screen"

	console.log("Post process screen = " + screen)
	$('.booking_screen').hide();
	$(screen).removeClass('hidden')
	$(screen).show()
}

function showPrevious() {
	console.log("Call to showPrevious currentScreen = " + currentScreen)

	var screen = "";

	if (currentScreen == 'contact') {
		// Should never happen
	} else if (currentScreen == 'address') {
		screen = 'contact'
		$('button#showPreviousButton').addClass('hidden')
	} else if (currentScreen == 'ticket') {
		screen = 'creche'
	} else if (currentScreen == 'creche') {
		screen = 'accomodation'
	} else if (currentScreen == 'accomodation') {
		screen = 'address'
	} else if (currentScreen == 'confirmation') {
		$('button#showNextButton').html('Next');
		screen = 'ticket'
	}

	if (screen == 'creche') {
		if ($('input#crecheRequiredRadioNo').is(":checked") == true) {
			screen = 'accomodation'
		}
	}

	if (screen == 'accomodation') {
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

function validate(screen) {

	// reset
	$(".form-control").removeClass('field-error')
	$("i.warning_icon").hide()
	var errors = []

	if (screen == 'contact') {
		validateField( 'firstname', errors )
		validateField( 'lastname', errors )
		validateField( 'telephone', errors )
		validateField( 'email', errors )
	} else if (currentScreen == 'address') {
		validateField( 'address1', errors )
		validateField( 'address1', errors )
		validateField( 'town', errors )
		validateField( 'postcode', errors )
		validateField( 'country', errors )
	} else if (currentScreen == 'accomodation') {
	} else if (currentScreen == 'creche') {
	} else if (currentScreen == 'ticket') {
		validateField("ticket", errors)
	}
	
	if(dev == true) return []; else return errors
}

function validateField(field, errors) {
	var value = $('#booking_' + field).val().trim()

	console.log(field + " : " + value)

	if (value == '') {
		errors.push({
			field : field,
			error : ' must be given'
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

