

	// Fancybox
	$('.work-box').fancybox();

	// Flexslider
	$('.flexslider').flexslider({
		animation: "fade",
		directionNav: false,
	});


//jQuery to collapse the navbar on scroll
$(window).scroll(function() {
    if ($(".navbar").offset().top > 50) {
        $(".navbar-fixed-top").addClass("top-nav-collapse");
    } else {
        $(".navbar-fixed-top").removeClass("top-nav-collapse");
    }
});

//jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});


  $(document).ready(ajustamodal);
  $(window).resize(ajustamodal);
  function ajustamodal() {
    var altura = $(window).height() - 50; //value corresponding to the modal heading + footer
    $(".ativa-scroll").css({ "height": altura, "overflow-x": "hidden", "overflow-y": "auto", "background": "transparent" });
  }


  //Scrollin items
$(window).scroll(function () {
    var divs = document.getElementsByClassName('scrollItem');
    var scroll = $(window).scrollTop(); //$(this).scrollTop()
    for (var i = 0; i < divs.length; ++i) {
        if (scroll > 250 && scroll < 1100) {
            $(divs[i]).addClass("it_" + i, { duration: 300 }); 
            $(divs[0]).addClass("fadeInUpBig", { duration: 300 }); 
            $(divs[2]).addClass("fadeInLeft", { duration: 300 });
            $(divs[3]).addClass("fadeInDownBig", { duration: 300 });
            $(divs[4]).addClass("fadeInRight", { duration: 300 }); 
            $(divs[i]).addClass("animated", { duration: 300 });
            $(divs[i]).addClass("wow", { duration: 300 });
        }
        else {
            $(divs[i]).removeClass("it_" + i, { duration: 300 });
            $(divs[i]).removeClass("wow", { duration: 300 });
            $(divs[i]).removeClass("animated", { duration: 300 });
        }
    }
   

    //if ($(this).scrollTop() > 50 && window.matchMedia('(max-width: 768px)').matches) {
    //    document.getElementById("fh5co-header").style.display = 'none';
    //} else {
    //    document.getElementById("fh5co-header").style.display = 'block';
    //}
});