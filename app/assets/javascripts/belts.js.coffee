$ ->
  $(".buttonForModal").click ->
    $("#"+$(this).attr("id")+"Modal").reveal()
    
  $(".challenge").click ->
    $.ajax
      type: "POST"
      url: "/completions"
      data: {
        challenge_id: $(this).attr("data-challenge-id")
        belt_id: $(this).attr("data-belt-id")
        user_id: $(this).attr("data-user-id")
      }
      success: (json_data) ->
        $("li[data-challenge-id=#{json_data.challenge_id}]").replaceWith(json_data.challenge_html)
