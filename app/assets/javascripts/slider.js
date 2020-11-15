$(document).on('turbolinks:load', function() {
  $('.slider').slick({
    centerMode: true,
    centerPadding: '200px',
    dots: true,
    focusOnSelect: true,
    autoplay: true,
    autoplaySpeed: 5000,
    arrows: true,
    pauseOnHover: true,
    prevArrow: '<button class="slide-arrow prev-arrow"></button>',
    nextArrow: '<button class="slide-arrow next-arrow"></button>',
    dotsClass: 'slide-dots'
  });
});