jQuery.noConflict();

(function($) {
	$(document).ready(function() {

		

		$(".hamburger").click(function() {
			$(this).toggleClass("is-active");
			$("#mobileMenu").toggleClass("is-active");
			//$("#mobileMenu").slideToggle();
		});

		$("#mobileMenu .arrow").on("click", function() {
			var myHolder = $(this).parent();
			myHolder.toggleClass("active");
		});

		$("input[type=submit]").addClass("btn btn-primary btn-block");

		$('.lazy-slider').each(function() {
			var $ajaxCarousel = $(this);
			if ($ajaxCarousel.length > 0) {
			    $ajaxCarousel.on('slide.bs.carousel', function (e) {
			        var $upcomingImage = $(e.relatedTarget).find('img');
			        if (typeof $upcomingImage.attr('src') === 'undefined') {
			            $upcomingImage.attr('src', $upcomingImage.data('src'));
			        }
			    });
			}
		});

		setTimeout(function() {
			$(".lazy-load").each(function() {
				var $myImg = $(this);
				if (typeof $myImg.attr('src') === 'undefined') {
					$myImg.attr('src', $myImg.data('src'));
				}
			});
			$(".videoHolder .v100").css("height", $(".videoHolder video").height());
			console.log($(".videoHolder video").height() );
		}, 500);

		$(".topContact").on("click", function() {
			//Form_ContactFormular
			$("html, body").animate({ scrollTop: $('#ContactFormularHolder').offset().top }, 1000);
		});

		$("a.scrollToLink").on("click", function() {
			event.preventDefault();
			$("#mobileMenu, .hamburger").removeClass("is-active");
			$("html, body").animate({ scrollTop: $($(this).attr("href")).offset().top - 100 }, 1000);
		})

		AOS.init({
			// Global settings:
			disable: false, // accepts following values: 'phone', 'tablet', 'mobile', boolean, expression or function
			startEvent: 'DOMContentLoaded', // name of the event dispatched on the document, that AOS should initialize on
			initClassName: 'aos-init', // class applied after initialization
			animatedClassName: 'aos-animate', // class applied on animation
			useClassNames: false, // if true, will add content of `data-aos` as classes on scroll
			disableMutationObserver: false, // disables automatic mutations' detections (advanced)
			debounceDelay: 50, // the delay on debounce used while resizing window (advanced)
			throttleDelay: 99, // the delay on throttle used while scrolling the page (advanced)


			// Settings that can be overridden on per-element basis, by `data-aos-*` attributes:
			offset: 120, // offset (in px) from the original trigger point
			delay: 0, // values from 0 to 3000, with step 50ms
			duration: 800, // values from 0 to 3000, with step 50ms
			easing: 'ease', // default easing for AOS animations
			once: false, // whether animation should happen only once - while scrolling down
			mirror: false, // whether elements should animate out while scrolling past them
			anchorPlacement: 'top-bottom', // defines which position of the element regarding to window should trigger the animation

		});

		var scrollTopValue = 0;
		$(window).scroll(function() {
			if ($(window).scrollTop() > 0) {
				var scrollTopValue = $(window).scrollTop() / 2;
				$(".paralaxMe").css({transform: 'translateY(' + scrollTopValue +'px)'});
			} else {
				$(".paralaxMe").css({transform: 'translateY(0px)'});
			}
			
		});

	});
}(jQuery));
