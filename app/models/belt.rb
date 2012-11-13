class Belt < ActiveRecord::Base
  attr_accessible :title, :description, :challenges_attributes

  validates_presence_of :title, :description
  validates_uniqueness_of :title

  has_many :challenges
  belongs_to :user
  accepts_nested_attributes_for :challenges

end