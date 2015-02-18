$(document).ready(function() {
  $(".post").click(function(event) {
      event.preventDefault();
       var postid = $('.getpost').val();
      $.ajax({
        type: "post",
        url: "/vote/excuse/" + postid,
        success: function(success) {
           $('.vote_count').html(success.count)
        }
      });
    }
  );
});