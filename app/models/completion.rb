class Completion < ActiveRecord::Base
  attr_accessible :belt, :description, :user_id, :belt_id, :challenge_id
  validates_presence_of :challenge_id, :belt_id, :user_id
  belongs_to :user

end