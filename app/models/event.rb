class Event < ActiveRecord::Base
  attr_accessible :capacity, :date, :location, :title
end
