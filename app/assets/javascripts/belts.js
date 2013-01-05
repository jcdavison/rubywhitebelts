$(document).ready( function() {
  
  $(".buttonForModal").click( function() {
    $("#"+$(this).attr("id")+"Modal").reveal();
  });

  $(".challenge").on("click", function() {
  
    $.ajax({
      type: "POST",
      url: "/completions",
      data: {
        challenge_id: $(this).attr("data-challenge-id"),
        belt_id: $(this).attr("data-belt-id"),
        user_id: $(this).attr("data-user-id")
        // belt_progress_id: $("div.progress[data-belt-progress='6']")
      },
      success: function(json_data) {
        //$("li ").attr("data-challenge-id", json.challenge_id).html(json_data.challenge_id);
        $("li[data-challenge-id=" + json_data.challenge_id +"]").replaceWith(json_data.challenge_html);
        // $("#progress").html(json_data.belt_progress);
      }
    });
  });

});