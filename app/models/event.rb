class Event < ActiveRecord::Base
  attr_accessible :capacity, :date, :location, :title, :description, :start_time, :end_time

end
