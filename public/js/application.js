$(document).ready(function() {
  $(".excuse").click(function(event) {
      event.preventDefault();
       var excuseID = $('.find-excuse').val();
      $.ajax({
        type: "post",
        url: "/vote/excuse/" + excuseID,
        success: function(success) {
           $('.vote_count').html(success.count)
        }
      });
    }
  );


  $(".ajax_comment").click(function(event) {
    event.preventDefault();
    $.ajax({
      type: "post",
      url: "/test",
      data: $(this).serialize(),
      success: function(success) {
        console.log("alright alright")
      }
    });
  });

});