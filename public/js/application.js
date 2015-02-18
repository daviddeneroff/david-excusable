$(document).ready(function() {
  $('.click-vote').click(function(event){
    event.preventDefault();
    console.log("wuuhhuu");
    $.ajax({
      type: "post",
      url: "FIND IT",
      success: function(success) {
        console.log(success)
      }
    });
  });
});