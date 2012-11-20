class Challenge < ActiveRecord::Base

  attr_accessible :description, :complete
  belongs_to :belt
  validates_uniqueness_of :description
  validates_presence_of :description

  

end