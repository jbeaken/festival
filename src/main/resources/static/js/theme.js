/**
 * Theme JS
 */

var $window = $(window);

$window.load(function() {

	console.log("window.load call, booting preloader")

    // Theme: Preloader
    // ================

    var preloader = $('.preloader');

    preloader.addClass('active');

    setTimeout(function() {
        preloader.hide();
    }, 2500);

});

$(function() {

	console.log("Booting from theme.js")

    // Theme: Navbar
    // =============

    var navbar = $('.navbar');
    var navbarCollapse = $('.navbar-collapse');
    var navbarLinks = $('.navbar-nav > li > a');

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
            }

            target = target.length ? target : $('[name=' + this.hash.slice(1) +']');

            if (target.length) {
                $('html, body').animate({
                    scrollTop: target.offset().top - 80
                }, 1000, function() {
                	 if(target.selector == '#section_booking') {
                		 $('input#booking_firstname').focus()
                		 //Need to reset to contact form
                		 $('.booking_screen').hide();
						 $('#contact_screen').removeClass('hidden')
						 $('#contact_screen').show()
                		 currentScreen = "contact";
                	 }
                });
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

    bannerCarouselImg.backstretch([
         [
           	{ width: 1024, url: "/img/carousel/brazil-1024x768.jpg?width=" + width + "&height=" + height },
            { width: 612, url: "/img/carousel/brazil-612x460.jpg?width=" + width + "&height=" + height },
            { width: 320, url: "/img/carousel/brazil-320x240.jpg?width=" + width + "&height=" + height }
         ],[
            { width: 1024, url: "/img/carousel/handsup-1024x768.jpg" },
            { width: 612, url: "/img/carousel/handsup-612x460.jpg" },
            { width: 320, url: "/img/carousel/handsup-320x240.jpg" }
         ],[
            { width: 1080, url: "/img/carousel/egypt-1024x768.jpg" },
            { width: 720, url: "/img/carousel/egypt-1024x768.jpg" },
            { width: 360, url: "/img/carousel/egypt-1024x768.jpg" }
         ],[
            { width: 1080, url: "/img/carousel/soas-stike-1024x768.jpg" },
            { width: 720, url: "/img/carousel/NHSstrikex720.jpg" },
            { width: 320, url: "/img/carousel/NHSstrikex720.jpg" }
         ],[
            { width: 1080, url: "/img/carousel/greek.jpg" },
            { width: 720, url: "/img/carousel/greek.jpg" },
            { width: 320, url: "/img/carousel/greek.jpg" }
         ],[
            { width: 1080, url: "/img/carousel/kings.jpg" },
            { width: 720, url: "/img/carousel/kings.jpg" },
            { width: 320, url: "/img/carousel/kings.jpg" }
         ],[
            { width: 1080, url: "/img/carousel/ucu-strike.jpg" },
            { width: 720, url: "/img/carousel/ucu-strike.jpg" },
            { width: 320, url: "/img/carousel/ucu-strike.jpg" }
         ],[
            { width: 1080, url: "/img/carousel/blm-731x548.jpg" },
            { width: 720, url: "/img/carousel/blm-731x548.jpg" },
            { width: 320, url: "/img/carousel/blm-320x480.jpg", cover : 'fit' }
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
        console.log("show.bs.modal for #modal_img")

        var button = $(event.relatedTarget);
        var modal = $(this);
        var heading = button.data('heading');
        var img = button.data('img');
        var content = button.data('content');
		var ajaxContent = button.data('ajax-content')

		if(ajaxContent != null) {
			console.log("Ajax call for " + ajaxContent)
			$('#modal_img__content').load("/modal/" + ajaxContent);
		} else {
			console.log("Non-ajax call, using content " + content)
			modal.find('#modal_img__content').html(content);
		}

        modal.find('#modal_img__heading').text(heading);
        modal.find('#modal_img__img').attr('src', img);
    });

	$('#modal_no_img').on('show.bs.modal', function(event) {
        console.log("show.bs.modal for #modal_no_img")
        console.log(event)

        var button = $(event.relatedTarget);
        var modal = $(this);
        var heading = button.data('heading');
        var content = button.data('content');
		var ajaxContent = button.data('ajax-content')

		if(ajaxContent != null) {
			console.log("Ajax call for " + ajaxContent)
			$('#modal_no_img__content').load("/modal/" + ajaxContent);
		} else {
			console.log("Non-ajax call, using content")
			modal.find('#modal_no_img__content').html(content);
		}

        modal.find('#modal_no_img__heading').text(heading);
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
        		{ href:'/img/conference/closing_rally.jpg', title:'Photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' },
        		{ href:'/img/conference/f_cc1.jpg', title:'Photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' },
        		{ href:'/img/conference/students2.jpg', title:'Photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' },
        		{ href:'/img/conference/students3.jpg', title:'Photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' },
        		{ href:'/img/conference/students4.jpg', title:'Photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' },
        		{ href:'/img/conference/Marxism2014-WideAngle-GS.jpg', title:'Photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' },
        		{ href:'/img/conference/f_cc2.jpg', title:'Photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' },
        		{ href:'/img/conference/meeting2.jpg', title:'Photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' }
        	],
            {
                hideBarsDelay : 0 // 0 to always show caption and action bar
            }
        );
    } );

    $( '.swipebox' ).swipebox( {autoplayVideos: true} );
});
