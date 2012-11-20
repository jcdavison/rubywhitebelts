class User < ActiveRecord::Base
  attr_accessible :email, :name, :linkedin_handle, :linkedin_id, :linkedin_secret, :linkedin_token, :admin, :master, :white_belt
  validates_presence_of :linkedin_id, :linkedin_secret, :linkedin_token, :linkedin_email
  validates_uniqueness_of :linkedin_email, :linkedin_id, { :alert => "That Person is already registered" }

  has_and_belongs_to_many :belts
  has_many :completions

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