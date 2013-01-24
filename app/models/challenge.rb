class Challenge < ActiveRecord::Base

  attr_accessible :description, :complete, :belt_id
  belongs_to :belt
  validates_presence_of :description, :belt_id

  def complete?(user_id)
    if
      User.find(user_id).completions.where("challenge_id = ?",self.id).exists?
      true
    else
      false
    end
  end
end