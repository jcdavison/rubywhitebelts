class Event < ActiveRecord::Base
  attr_accessible :capacity, :date, :location, :title, :description, :start_time, :end_time

  def all_users_who_rsvp
    @users_who_rsvp = []
    Rsvp.where("event_id = ?", self.id).each do |rsvp|
      @users_who_rsvp << User.find(rsvp.user_id)
    end
    @users_who_rsvp
  end

end
