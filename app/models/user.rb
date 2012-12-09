class User < ActiveRecord::Base
  attr_accessible :email, :name, :handle, :uid, :secret, :token, :admin, :master, :white_belt
  validates_presence_of :uid, :secret, :token, :email
  validates_uniqueness_of :email, :uid, { :alert => "That Person is already registered" }

  has_and_belongs_to_many :belts
  has_many :completions
  has_many :rsvps

  def set_attributes(oauth_hash)
    self.linkedin_id = oauth_hash[:uid]
    #self.linkedin_handle = "#{oauth_hash[:info][:firstName]} #{oauth_hash[:info][:lastName]} "
    self.linkedin_email = oauth_hash[:info][:email]
    self.linkedin_token = oauth_hash[:credentials][:token]
    self.linkedin_secret = oauth_hash[:credentials][:secret]
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