$(document).ready(function() {
  $('.click-vote').click(function(event){
    event.preventDefault();
    $.ajax({
      type: "post",
      url: "/testing",
      success: function(success) {
        console.log(success)
      }
    });
  });
});