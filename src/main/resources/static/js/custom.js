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
		
		var result = saveBooking()
		
		console.log("saveBooking result : ")
		console.log(result)
		
	    if(result === 'error') {
	    	console.log("There was an error processing your booking. Please phone 0207 767???? quoting error : " + result)
	    }
	    
	    if(result === 'success') {
	    	console.log("Your message was sent successfully. We will respond as quickly as possible")
	    } 
	    
	    screen = 'thankyou'
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

/*************/
/** BOOKING **/
/*************/

function initBookingForMobile() {
	console.log("initBookingForMobile()")
	
	$('section.section_booking').removeClass('hidden');
	$('.booking_screen').removeClass('hidden')
	$('.booking_screen').show()
	$('input#booking_firstname').focus()
	
	$('#thankyou_screen').hide()
	$('#confirmation_screen').hide()
	
	// Close collapsed navbar on click
    $('.navbar-collapse').collapse('hide');
}

function saveBooking() {
	
	console.log("saveBooking()")

	var firstname = $('input#booking_firstname').val()
	var lastname = $('input#booking_lastname').val()
	var college = $('input#booking_college').val()
	var tradeUnion = $('input#booking_tradeUnion').val()
	var swpBranch = $('input#booking_swpBranch').val()
	var otherMembership = $('input#booking_otherMembership').val()
	var hearAbout = $('input#booking_hearAbout').val()
	
	var telephone = $('input#booking_telephone').val()
	var email = $('input#booking_email').val()
	
	var address1 = $('input#booking_address1').val()
	var address2 = $('input#booking_address2').val()
	var town = $('input#booking_town').val()
	var country = $('input#booking_country').val()
	var postcode = $('input#booking_postcode').val()
	
	var ticketId = $('select#booking_ticket').val()
	
	//Dummy values
	firstname = "Jack"
	lastname = "johnes"
//	email = "jack747@gmail.com"
		
	var postData = {
		firstname : firstname, 
		lastname : lastname, 
		email : email,
		telephone : telephone,
		
		'ticket.id' : ticketId, 
		
		
		'address.address1' : address1,
		'address.address2' : address2,
		'address.town' : town,
		'address.postcode' : postcode,
		'address.country' : country
	}
	
	console.log(postData)
	
	var result = ""
	
	$.post( "/book", postData ).done(function( data ) {
	    console.log( "Booking was sent to server, response : " );
	    console.log( data )
	    
	    return data
	});
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
	
	
	if (!validateEmail( email )) {
		alert("Please enter a valid email!")
		return
	}	
	
	$.post( "/sendEmail", { email: email, message: message, name : name } ).done(function( data ) {
	    console.log( "Message sent to server, response : " + data );
	    
	    if(data === 'error') {
	    	alert("There was an error sending your message. Please phone 0207 767????")
	    }
	    
	    if(data === 'success') {
	    	alert("Your message was sent successfully. We will respond as quickly as possible")
	    }		    
	});
}

function validateEmail() {
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

