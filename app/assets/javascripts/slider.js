$(document).on('turbolinks:load', function() {
  $('.slider').slick({
    centerMode: true,
    centerPadding: '200px',
    dots: true,
    focusOnSelect: true,
    autoplay: true,
    autoplaySpeed: 5000,
    dotsClass: 'dot-class',
  });
});