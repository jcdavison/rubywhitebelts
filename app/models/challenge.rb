class Challenge < ActiveRecord::Base

  attr_accessible :description, :complete
  belongs_to :belt
  validates_presence_of :description
end