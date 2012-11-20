class Completion < ActiveRecord::Base
  attr_accessible :belt, :description, :user_id
  validates_presence_of :belt, :description
  belongs_to :user

end