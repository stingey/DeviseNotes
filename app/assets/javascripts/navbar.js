$(document).on("scroll", function() {
    if ($(document).scrollTop() > 25) {
       $("nav").addClass('small');
       $(".logo").addClass('small');
       $(".taz").addClass('small');
       $('.drop-down').finish().hide(0);
    } else {
       $("nav").removeClass('small');
       $(".logo").removeClass('small');
       $(".taz").removeClass('small');
       $('.drop-down').fadeIn();
    }
  }.bind(this));
