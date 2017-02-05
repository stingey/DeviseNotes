$(document).on("scroll", function() {
    if ($(document).scrollTop() > 25) {
       $("nav").addClass('small');
       $(".logo").addClass('small');
    } else {
       $("nav").removeClass('small');
       $(".logo").removeClass('small');
    }
  }.bind(this));
