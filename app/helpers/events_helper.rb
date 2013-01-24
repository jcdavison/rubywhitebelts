module EventsHelper
  def has_rsvps?(event_id)
    if ! Rsvp.where("event_id = ?", event_id).empty?
      true
    end
  end
end
