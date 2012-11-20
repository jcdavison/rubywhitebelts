class Belt < ActiveRecord::Base
  attr_accessible :title, :description, :challenges_attributes

  validates_presence_of :title, :description
  validates_uniqueness_of :title, { :alert => "That belt already exists" }

  has_many :challenges
  has_and_belongs_to_many :users
  accepts_nested_attributes_for :challenges

end