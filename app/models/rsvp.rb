class Rsvp < ActiveRecord::Base
  attr_accessible :event_id, :user_id
  validates :event_id, :user_id, :presence => true
end
