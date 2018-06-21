/**
 * Theme JS
 */

var $window = $(window);

$window.load(function() {
	
	console.log("Window load. In preloader")

    // Theme: Preloader
    var preloader = $('.preloader');

    preloader.addClass('active');

    setTimeout(function() {
        preloader.hide();
        //Load speaker images
        console.log("Loading images")
        $('img.load-img').each(function() {
            var this_image = this;
            var lsrc = $(this_image).attr('img-src')
            //console.log(lsrc)
            //Check for undefined as save server hit??
            var img = new Image();
            img.src = lsrc;
            $(img).load(function() {
                this_image.src = this.src;
            });
        });
        console.log("Finished Loading images")        
        console.log("preloader.hide()")
    }, 2500);
    
    console.log("End window.load. Staring loading meetings")
    writeMeetings( 'THURSDAY', '12.30');
    
    //Must be after writeMeetings or scrollTop is incorrect
	if(showBookingForm === 'true') {
		$('a#anchor_section_booking').click()
    }

});

$(function() {
	
	console.log("DOM Loaded. function()")

    // Theme: Navbar
    var navbar = $('.navbar');
    var navbarCollapse = $('.navbar-collapse');

    // Toggle navbar on page load if needed
    var scrollTop = $window.scrollTop();

    if (scrollTop > 0) {
        navbar.toggleClass('navbar-default navbar-inverse');
    }

    // Toggle navbar on scroll
    $window.scroll(function() {

        scrollTop = $window.scrollTop();

        if (scrollTop > 0 && $('.navbar-default').length) {
            navbar.removeClass('navbar-default').addClass('navbar-inverse');
        } else if (scrollTop == 0) {
            navbar.removeClass('navbar-inverse').addClass('navbar-default');
        }

    });

    // Toggle navbar on collapse
    navbarCollapse.on('show.bs.collapse', function() {
        $(this).parents('.navbar').removeClass('navbar-default').addClass('navbar-inverse');
    });
    navbarCollapse.on('hidden.bs.collapse', function() {
        var scrollTop = $window.scrollTop();

        if (scrollTop == 0) {
            $(this).parents('.navbar').removeClass('navbar-inverse').addClass('navbar-default');
        }
    });

    $('[href*="#section_"]').on('click', function() {

        // Close collapsed navbar on click
        navbarCollapse.collapse('hide');

        // Smooths scroll to anchor. Check if section_booking, remove hidden class
        if ( location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname ) {

            var target = $(this.hash);

            if(target.selector == '#section_booking') {
            	$('section.section_booking').removeClass('hidden');
            	if(isDev === true) populateBookingFormForDev()
            }

            target = target.length ? target : $('[name=' + this.hash.slice(1) +']');

            if (target.length) {
            	var num = target.offset().top - 80
//            	console.log(target)
//            	console.log("target.offset().top " + num)

            	$('html, body').animate({
                    scrollTop: target.offset().top - 80
                }, 1000, function() {
                	 if(target.selector == '#section_booking') {
                		 $('input#booking_firstname').focus()
                		 //Need to reset to contact form
                		 $('.booking_screen').hide();
						 $('#contact_screen').removeClass('hidden')
						 $('#contact_screen').show()
						 bookingPassedValidation = false
                		 currentScreen = "contact";
                	 }
                });

            	var page = "/" + target.selector.replace('#section_', '');

            	sendGA( page )

                return false;
            }
        }
    });


    // Banner: Carousel
    // ================

    var bannerCarouselImg = $('.banner__carousel__img');

    var height = $(window).height();   // returns height of browser viewport
    var width = $(window).width();   // returns width of browser viewport

    console.log("width : " + width + " height : " + height)

    var dimensions = "?width=" + width + "&height=" + height

    bannerCarouselImg.backstretch([
         [
           	{ width: 1024, url: "/img/carousel/test/midianinjaB-1024.jpg" + dimensions },
            { width: 720, url: "/img/carousel/test/midianinjaB-720.jpg" + dimensions },
            { width: 320, url: "/img/carousel/test/midianinjaB-320.jpg" + dimensions }
         ],[
            { width: 1024, url: "/img/carousel/test/women-protest-1024.jpg" },
            { width: 720, url: "/img/carousel/test/women-protest-720.jpg" },
            { width: 320, url: "/img/carousel/test/women-protest-320.jpg" }
         ],[
            { width: 1024, url: "/img/carousel/test/UNISON-SOAS-Cleaners-GS-1024.jpg" },
            { width: 720, url: "/img/carousel/test/UNISON-SOAS-Cleaners-GS-720.jpg" },
            { width: 320, url: "/img/carousel/test/UNISON-SOAS-Cleaners-GS-320.jpg" }
         ],[
            { width: 1024,deviceOrientation : 'landscape', url: "/img/carousel/test/greek-general-strike-1024x768.jpg?width=" + width + "&height=" + height },
            { width: 720, deviceOrientation : 'landscape', url: "/img/carousel/test/greek-general-strike-720x540.jpg?width=" + width + "&height=" + height },
            { width: 320, deviceOrientation : 'landscape', url: "/img/carousel/test/greek-general-strike-320x240.jpg?width=" + width + "&height=" + height },
            { width: 700, deviceOrientation : 'portrait', url: "/img/carousel/test/greek-general-strike-PORTRAIT-700x1060.jpg?width=" + width + "&height=" + height },
            { width: 480, deviceOrientation : 'portrait', url: "/img/carousel/test/greek-general-strike-PORTRAIT-480x720.jpg?width=" + width + "&height=" + height },
            { width: 210, deviceOrientation : 'portrait', url: "/img/carousel/test/greek-general-strike-PORTRAIT-210x320.jpg?width=" + width + "&height=" + height }
         ],[
            { width: 1024, url: "/img/carousel/test/NHSstrikeKings-GS-1024.jpg" },
            { width: 720, url: "/img/carousel/test/NHSstrikeKings-GS-720.jpg" },
            { width: 320, url: "/img/carousel/test/NHSstrikeKings-GS-320.jpg" }
         ],[
            { width: 1080, url: "/img/carousel/test/London-demo-february-GS-UCU-1080.jpg" },
            { width: 720, url: "/img/carousel/test/London-demo-february-GS-UCU-720.jpg" },
            { width: 320, url: "/img/carousel/test/London-demo-february-GS-UCU-320.jpg" }
         ],[
            { width: 1024, url: "/img/carousel/test/black-lives-Lightbrigading-1024.jpg" },
            { width: 720, url: "/img/carousel/test/black-lives-Lightbrigading-720.jpg" },
            { width: 320, url: "/img/carousel/test/black-lives-Lightbrigading-320.jpg" }
         ]
    ], {
        duration: 500,
        fade: 750
    });

    bannerCarouselImg.backstretch('pause');


    var bannerCarousel = $('.banner__carousel');

    // Enable sliding

    bannerCarousel.on('slid.bs.carousel', function(e) {
        var slideIndex = $(e.relatedTarget).index();

        // Slide backstretch carousel
        bannerCarouselImg.backstretch('show', slideIndex);

    });

    // Disable carousel when not in viewport

    bannerCarousel.waypoint(function(direction) {
      if ( direction == "down") {
        bannerCarousel.carousel('pause');
      } else {
        bannerCarousel.carousel('cycle');
      }
    }, {
      offset: function() {
        return -bannerCarousel.outerHeight();
      }
    });


    // Modals
    // ================

    $('#modal_img').on('show.bs.modal', function(event) {

        var button = $(event.relatedTarget);
        var modal = $(this);
        var heading = button.data('heading');
        var img = button.data('img');
        var content = button.data('content');
		var ajaxContent = button.data('ajax-content')
		var page = button.data('ga')

		if(ajaxContent != null) {
			$('#modal_img__content').load("/modal/" + ajaxContent);
		} else {
			modal.find('#modal_img__content').html(content);
		}

        modal.find('#modal_img__heading').text(heading);
        modal.find('#modal_img__img').attr('src', img);

        sendGA( '/modal/' + page)
    });

	$('#modal_no_img').on('show.bs.modal', function(event) {

        var button = $(event.relatedTarget);
        var modal = $(this);
        var heading = button.data('heading');
        var content = button.data('content');
		var ajaxContent = button.data('ajax-content')
		var page = button.data('ga')

		if(ajaxContent != null) {
			$('#modal_no_img__content').load("/modal/" + ajaxContent);
		} else {
			modal.find('#modal_no_img__content').html(content);
		}

        modal.find('#modal_no_img__heading').text(heading);

        sendGA( '/modal/' + page)
    });


    // Theme: Animation
    // ================

    $('[data-animate]').each(function() {
        var $this = $(this);
        var animation = $this.data('animate');

        // Animate elements when in viewport

        $this.waypoint(function(direction) {
            $this.addClass(animation);
        }, {
            offset: '75%'
        });

    });


    //Swipebox
    $('a#swipeBoxButton').click( function( e ) {
    	e.preventDefault();
    	$.swipebox( [
 	            { href:'/img/conference/f_cc3.jpg', title:'Photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' },
 	            { href:'/img/conference/f_cc1.jpg', title:'Photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' },
 	            { href:'/img/conference/f_cc2.jpg', title:'Photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' },
 	            { href:'/img/conference/f_cc4.jpg', title:'Photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' },
        		{ href:'/img/conference/black-panther-mtg-south-london.jpg', title:'Photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' },
        		{ href:'/img/conference/hector-south-london.jpg', title:'Photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' },
        		{ href:'/img/conference/china-melville-1024.jpg', title:'Photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' },
        		{ href:'/img/conference/closing_rallyx1024.jpg', title:'Photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' }
        	],
            {
                hideBarsDelay : 0 // 0 to always show caption and action bar
            }
        );
    } );

    $( '.swipebox' ).swipebox( {autoplayVideos: true, beforeOpen: function() { sendGA('/video') } } );

    //Back button
    window.onbeforeunload = function() {
      var firstname = $('input#booking_firstname').val()
      console.log("checking for trace of booking : " + firstname)
      if(firstname !== '' && bookingPassedValidation == false) return "Are you sure, this will leave this website and prevent any booking?";
    };
//    history.pushState(null, null, document.URL);
//    window.addEventListener('popstate', function () {
//        history.pushState(null, null, document.URL);
//    });
    

    
    console.log("end function()")
});
