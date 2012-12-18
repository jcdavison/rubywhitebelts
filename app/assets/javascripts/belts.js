$(document).ready( function() {
  
  $(".buttonForModal").click( function() {
    $("#"+$(this).attr("id")+"Modal").reveal();
  });
  console.log($(".tool").length)
  $(".tool").on("click", function() {

      console.log($(this).attr("data-action"));
      console.log($(this).attr("data-description"));
      
      $.ajax({
        type: "POST",
        url: "/completions",
        data: {
          challenge_id: $(this).attr("data-challenge-id"),
          belt_id: $(this).attr("data-belt-id")


        },
        success: function(json_data) {
          console.log(json_data.challenge_html);
          // console.log($(this).attr());
          //$("li ").attr("data-challenge-id", json.challenge_id).html(json_data.challenge_id);
          $("li[data-challenge-id=" + json_data.challenge_id +"]").replaceWith(json_data.challenge_html);
          $("#progress").html(json_data.belt_progress);

        }

      });
    });

});