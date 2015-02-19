$(document).ready(function() {

  $("#clickme").click(function(event) {
  event.preventDefault
  var x = confirm("Are you sure you want to log out?")
    if (x == true) {
      window.location = "/logout";
    } else {
      window.location = "/excuses";
    }

  });

  $('#signup').click(function() {
    $('.signup').toggle();
  });

  $('#login').click(function() {
    $('.login').toggle();
  });

  $(".excuse").click(function(event) {
      event.preventDefault();
       var excuseID = $('.find-excuse').val();
      $.ajax({
        type: "post",
        url: "/vote/excuse/" + excuseID,
        success: function(success) {
           $('.vote_count').html(success.count);
        }
      });
    }
  );


  $(".ajax_comment").submit(function(event) {
    event.preventDefault();
    var rightID = $(".find-id").val();
    $.ajax({
      type: "post",
      dataType: "json",
      data: $(this).serialize(),
      url: "/ajax/comment/excuse/" + rightID,
      success: function(success) {
        curseChecker.look("booger");
        var hi = $('.all-comments').prepend("<p class='hey'>"+ success.comment.content + " by: " + success.name + "</p>");
        $(".hello").val(" ");
      }
    });
  });

});