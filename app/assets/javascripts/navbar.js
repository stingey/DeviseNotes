$(document).on("scroll", function() {
    if ($(document).scrollTop() > 25) {
       $("nav").addClass('small');
       $(".logo").addClass('small');
       $('.drop-down').finish().hide(0);
    } else {
       $("nav").removeClass('small');
       $(".logo").removeClass('small');
       $('.drop-down').delay(50).fadeIn();
    }
  }.bind(this));
