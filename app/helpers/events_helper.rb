module EventsHelper
  def has_rsvps?(event_id)
    if Rsvp.where("event_id = ?", event_id)
      true
    end
  end
end
