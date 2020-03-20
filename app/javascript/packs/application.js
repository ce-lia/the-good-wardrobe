import "bootstrap";
import $ from "jquery";



/* Fucking jQuery */

const header = document.querySelector('.start-style')
if (header) {


  window.addEventListener("scroll", (event) => {
    if (window.scrollY >=10) {
      header.classList.remove("start-style");
      header.classList.add("scroll-on");
      console.log("Test if")
    }
    else {
      header.classList.add('start-style');
      header.classList.remove('scroll-on');
      console.log("Test else")
    }
  });
}

// (function($) { "use strict";

//   $(function() {
//     var header = $(".start-style");
//     $(window).scroll(function() {
//       var scroll = $(window).scrollTop();

//       if (scroll >= 10) {
//         header.removeClass('start-style').addClass("scroll-on");
//       } else {
//         header.removeClass("scroll-on").addClass('start-style');
//       }
//     });
//   });

//   //Animation

//   $(document).ready(function() {
//     $('body.hero-anime').removeClass('hero-anime');
//   });

//   //Menu On Hover

//   $('body').on('mouseenter mouseleave','.nav-item',function(e){
//       if ($(window).width() > 750) {
//         var _d=$(e.target).closest('.nav-item');_d.addClass('show');
//         setTimeout(function(){
//         _d[_d.is(':hover')?'addClass':'removeClass']('show');
//         },1);
//       }
//   });

//   //Switch light/dark

//   $("#switch").on('click', function () {
//     if ($("body").hasClass("dark")) {
//       $("body").removeClass("dark");
//       $("#switch").removeClass("switched");
//     }
//     else {
//       $("body").addClass("dark");
//       $("#switch").addClass("switched");
//     }
//   });

//   })(jQuery);
