$ ->
  $(".event").click ->
    console.log "this is fucking working"
    # console.log this
    # if $(this).attr("data-action") == "REMOVE_EVENT"
    #  $.ajax
    #    type: "DELETE"
    #    url: "/events"
    #    data: {
    #      event_id: $(this).attr("data-event-id")
    #       belt_id: $(this).attr("data-belt-id") 
    #       user_id: $(this).attr("data-user-id")
    #    }
    #    success: (json_data) ->
    #      $("li[data-challenge-id=#{json_data.challenge_id}]").replaceWith(json_data.challenge_html)