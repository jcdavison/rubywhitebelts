class User < ActiveRecord::Base
  attr_accessible :email, :name, :twitter_handle, :twitter_id, :twitter_secret, :twitter_token, :admin, :master, :white_belt
  validates_presence_of :twitter_handle, :twitter_id, :twitter_secret, :twitter_token
  validates_uniqueness_of :twitter_id, :twitter_handle, { :alert => "That @twitter is already registered" }

  has_and_belongs_to_many :belts
  has_many :completions

  def set_attributes(oauth_hash)
    self.twitter_id = oauth_hash[:uid]
    self.twitter_handle = oauth_hash[:info][:nickname]
    self.twitter_token = oauth_hash[:credentials][:token]
    self.twitter_secret = oauth_hash[:credentials][:secret]
  end

  # def challenge_status?
  #   current_user.completions.each do |completion|
  #     if completion.description == self.description
  #       true
  #     else
  #       false
  #     end
  #   end
  # end 
  

end

# master == true should be able to create other admins
# admin == true should be able to edit belts, challenges etc