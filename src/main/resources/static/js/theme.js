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

            console.log( target )

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

    if ( bannerCarouselImg.length ) {

        var bannerCarouselImgArr = bannerCarouselImg.data('images').split(',');

//        console.log("bannerCarouselImgArr : ")
//        console.log( bannerCarouselImgArr )

        var array1080 = []
        var array720 = []
        var array320 = []


        for (var i = 0; i < bannerCarouselImgArr.length; i++) {
            var url = bannerCarouselImgArr[i]
            array1080.push( { width: 1080, url: url } )
            array720.push( { width: 720, url: url } )
            array320.push( { width: 320, url: url } )
        }

        var height = $(window).height();   // returns height of browser viewport
        $(document).height(); // returns height of HTML document (same as pageHeight in screenshot)
        var width = $(window).width();   // returns width of browser viewport
        $(document).width();

        console.log("width : " + width + " height : " + height)

        // Init carousel

        //Low res
//            bannerCarouselImg.backstretch(
//                [[
//                 { width: 1080, url: "/img/carousel/handsup.jpg" },
//                 { width: 720, url: "/img/carousel/handsup.jpg" },
//                 { width: 320, url: "/img/carousel/handsup.jpg" }
//               ],[
//                { width: 1080, url: "/img/carousel/middleeast.jpg" },
//                { width: 720, url: "/img/carousel/middleeast.jpg" },
//                { width: 320, url: "/img/carousel/middleeast.jpg" }
//              ],[
//               { width: 1080, url: "/img/carousel/nhs.jpg" },
//               { width: 720, url: "/img/carousel/nhs.jpg" },
//               { width: 320, url: "/img/carousel/nhs.jpg" }
//             ],[
//                { width: 1080, url: "/img/carousel/sdf.jpg" },
//                { width: 720, url: "/img/carousel/sdf.jpg" },
//                { width: 320, url: "/img/carousel/sdf.jpg" }
//              ]], {
//                    duration: 500,
//                    fade: 750
//                });
            //My screen at home
        //http://marxismfestival.website/img/carousel/midianinja-5x1586x721.jpg
        //my motorola g4 play 360x512
            //High res
            bannerCarouselImg.backstretch(
                    [[
                      { width: 1024, url: "/img/carousel/brazil-1024x768.jpg?width=" + width + "&height=" + height },
                      { width: 461, url: "/img/carousel/brazil-461x768.jpg?width=" + width + "&height=" + height },
                      { width: 360, url: "/img/carousel/brazil-1024x768.jpg?width=" + width + "&height=" + height },
                      { width: 320, url: "/img/carousel/brazil-1024x768.jpg?width=" + width + "&height=" + height }
                    ],[
                     { width: 1080, url: "/img/carousel/handsup-1024x768.jpg" },
                     { width: 720, url: "/img/carousel/handsup-505x762.jpg" },
                     { width: 441, url: "/img/carousel/handsup-441x765.jpg" }
                   ],[
                    { width: 1080, url: "/img/carousel/egypt-1024x768.jpg" },
                    { width: 720, url: "/img/carousel/women-protestx720.jpg" },
                    { width: 360, url: "/img/carousel/egypt-360x748.jpg" }
                  ],[
                   { width: 1080, url: "/img/carousel/soas-stike-1024x768.jpg" },
                   { width: 720, url: "/img/carousel/NHSstrikex720.jpg" },
                   { width: 320, url: "/img/carousel/NHSstrikex720.jpg" }
                 ],[
                    { width: 1080, url: "/img/carousel/spain-1024x768.jpg" },
                    { width: 720, url: "/img/carousel/spain.jpg" },
                    { width: 320, url: "/img/carousel/spain.jpg" }
                  ]], {
                        duration: 500,
                        fade: 750
                    });

        bannerCarouselImg.backstretch('pause');

    }

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


    // Banner: Parallax
    // ================

    var bannerSection = $('.section_banner');

    if ( bannerSection.length ) {
        var bannerSectionOffsetTop = bannerSection.offset().top;
        var bannerSectionHeight = bannerSection.height();
        var parallaxRate = 5;

        $window.scroll(function() {

            if ( bannerSection.hasClass('parallax') ) {
                setTimeout(function() {
                    var windowScrollTop = $window.scrollTop(),
                        bannerSectionOffset = windowScrollTop - bannerSectionOffsetTop,
                        parallaxOffset = Math.round(bannerSectionOffset / parallaxRate);

                    if (bannerSectionOffset <= bannerSectionHeight) {
                        bannerCarouselImg.css({
                            '-webkit-transform': 'translateY(' + parallaxOffset + 'px)',
                                    'transform': 'translateY(' + parallaxOffset + 'px)'
                        });
                    }
                }, 10);

            }

        });

    }


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


    // Stats: Count To
    // ===============

    var statsItem = $('.stats__item__value');

    if ( statsItem.length ) {

        statsItem.each(function() {
            var $this = $(this);

            $this.waypoint(function(direction) {
                $this.not('.finished').countTo({
                    'onComplete': function() {
                        $this.addClass('finished');
                    }
                });
            }, {
                offset: '75%'
            });

        });
    }


    // Footer: Year
    // ============

    var currentYear = new Date().getFullYear();

    $('#footer__year').text(currentYear);


    // Theme: Animation
    // ================

    $('[data-animate]').each(function() {
        var $this = $(this);
        var animation = $this.data('animate');

        // Animate elements when in viewport

        $this.waypoint(function(direction) {
//            console.log( "adding animation " + animation + " to ")
//            console.log( $this )
            $this.addClass(animation);
        }, {
            offset: '75%'
        });

    });


    // Screenshots: Owl carousel
    // =========================

    var screenshotsOwlCarousel = $('.screenshots__carousel');

    if ( screenshotsOwlCarousel.length ) {
        screenshotsOwlCarousel.owlCarousel({
            items: 3,
            loop: true
        })
    }

    // Theme: Fullpage
    // ===============

    var fullPageContainer = $('#fullpage');

    if ( fullPageContainer.length ) {

        // Init backstretch plugin
        var fullpageCarouselImg = $('#fullpage__carousel');
        var fullpageCarouselImgArr = fullpageCarouselImg.data('images').split(',');

        // Init carousel

        fullpageCarouselImg.backstretch(fullpageCarouselImgArr, {
            duration: 5000,
            fade: 750
        });
        fullpageCarouselImg.backstretch('pause');

        // Init fullpage plugin

        fullPageContainer.fullpage({

            // Navigation
            menu: '.navbar-nav',
            anchors: ['fp-section_banner', 'fp-section_features', 'fp-section_portfolio', 'fp-section_pricing', 'fp-section_team', 'fp-section_stats', 'fp-section_skills', 'fp-section_about', 'fp-section_testimonials', 'fp-section_news', 'fp-section_contact'],

            //Custom selectors
            sectionSelector: 'section',

            // Scrolling
            scrollOverflow: true,
            scrollOverflowReset: true,
            scrollingSpeed: 750,

            // Design
            paddingTop: '100px',
            paddingBottom: '100px',

            // Callbacks
            onLeave: function(index, nextIndex, direction) {

                // Change background image
                fullpageCarouselImg.backstretch('show', nextIndex - 1);

                // Collapse menu
                navbarCollapse.collapse('hide');

            },
            afterLoad: function(anchorLink, index) {

                // Init countTo plugin

//                if ( $('section.active').is('.section_stats') ) {
//                    $('.stats__item__value:not(.finished)').countTo({
//                        onComplete: function() {
//                            $(this).addClass('finished');
//                        }
//                    });
//                }

            }

        });

    }


    // Theme: Color schemes
    // ====================

    var $body = $('body');
    var sidebar = '';
        sidebar += '<div class="sidebar">';
        sidebar += '<div class="sidebar__toggle" role="button"><i class="ion-android-settings"></i></div>';
        sidebar += '<h4 class="sidebar__heading page-header">Color scheme</h4>';
        sidebar += '<ul class="sidebar__colors">';
        sidebar += '<li data-color="orange" class="active brand-orange"><span></span></li>';
        sidebar += '<li data-color="deep-orange" class="brand-deep-orange"><span></span></li>';
        sidebar += '<li data-color="green" class="brand-green"><span></span></li>';
        sidebar += '<li data-color="teal" class="brand-teal"><span></span></li>';
        sidebar += '<li data-color="cyan" class="brand-cyan"><span></span></li>';
        sidebar += '</ul>';
        sidebar += '<h4 class="sidebar__heading page-header">Banner Parallax</h4>';
        sidebar += '<button class="sidebar__parallax btn btn-block btn-default"><span class="show">Click to enable</span><span class="hidden">Click to disable</span></button>';
        sidebar += '</div>';

    if ( !$body.hasClass('no-settings') ) {
        $body.append(sidebar);
    }

    // Toggle sidebar
    $body.on('click', '.sidebar__toggle', function() {
        $('.sidebar').toggleClass('active');
    });

    // Toggle color schemes

    $body.on('click', '.sidebar__colors > li', function() {
        var $this = $(this);

        // Toggle stylesheet
        var color = $this.data('color');
        var linkLink = '<link rel="stylesheet" href="/css/theme_' + color + '.css">';
        $('[href*="/css/theme"]').after(linkLink);

        // Toggle active button
        $this.addClass('active');
        $this.siblings('li').removeClass('active');
    });

    // Enable parallax
    $body.on('click', '.sidebar__parallax', function() {
        var $this = $(this);

        // Toggle parallax
        $body.animate({
            scrollTop: 0
        }, 500, function() {
            bannerSection.toggleClass('parallax');
        });

        // Toggle button caption
        $this.find('span').toggleClass('show hidden');
    });

	//allow_resize: true, /* Resize the photos bigger than viewport. true/false */
	//default_width: 500,
	//default_height: 344,

    //Enable video
    $("a#prettyPhotoVideo").prettyPhoto( {social_tools: false, modal : true, default_width: 700, default_height: 481} );

    //Swipebox
    $('a#swipeBoxButton').click( function( e ) {
    	e.preventDefault();
    	$.swipebox( [
    		{ href:'/img/conference/closing_rally.jpg', title:'Here is a description, photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' },
    		{ href:'/img/conference/f_cc1.jpg', title:'Here is a description, photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' },
    		{ href:'/img/conference/students2.jpg', title:'Here is a description, photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' },
    		{ href:'/img/conference/students3.jpg', title:'Here is a description, photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' },
    		{ href:'/img/conference/students4.jpg', title:'Here is a description, photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' },
    		{ href:'/img/conference/Marxism2014-WideAngle-GS.jpg', title:'Here is a description, photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' },
    		{ href:'/img/conference/f_cc2.jpg', title:'Here is a description, photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' },
    		{ href:'/img/conference/meeting2.jpg', title:'Here is a description, photo credit by  <a href="https://guy-smallman-photos.photoshelter.com/" target="_blank">Guy Smallman 2018</a>' }
    	] );
    } );

    $( '.swipebox' ).swipebox( {autoplayVideos: true} );
});
