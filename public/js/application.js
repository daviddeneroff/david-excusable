$(document).ready(function() {

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
           $('.vote_count').html(success.count)
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
        $('.all-comments').prepend("<p>"+ success.comment.content + " by: " + success.name + "</p>");
        $(".hello").val(" ");
      }
    });
  });

});