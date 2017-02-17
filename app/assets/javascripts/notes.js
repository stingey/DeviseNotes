$(document).on("scroll", function() {
    if ($(document).scrollTop() > 25) {
       $(".header-div").addClass('fixed');
    } else {
       $(".header-div").removeClass('fixed');
    }
  }.bind(this));
