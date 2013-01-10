class User < ActiveRecord::Base
  attr_accessible :email, :name, :handle, :uid, :secret, :token, :admin, :master, :white_belt, :pic
  validates_presence_of :uid, :secret, :token, :email
  validates_uniqueness_of :email, :uid, { :alert => "That Person is already registered" }

  has_and_belongs_to_many :belts
  has_many :completions
  has_many :rsvps

  def set_attributes(oauth_hash)
    self.uid = oauth_hash[:uid]
    #self.linkedin_handle = "#{oauth_hash[:info][:firstName]} #{oauth_hash[:info][:lastName]} "
    self.email = oauth_hash[:info][:email]
    self.token = oauth_hash[:credentials][:token]
    self.secret = oauth_hash[:credentials][:secret]
    self.first_name = oauth_hash[:info][:first_name]
    self.last_name = oauth_hash[:info][:last_name]
    self.pic = oauth_hash[:info][:image]
  end

  def update_info(oauth_hash)
    self.update_attribute(:email, oauth_hash[:info][:email] )
    self.update_attribute(:token, oauth_hash[:credentials][:token])
    self.update_attribute(:secret, oauth_hash[:credentials][:secret])
    self.update_attribute(:uid, oauth_hash[:uid])
    self.update_attribute(:first_name, oauth_hash[:info][:first_name])
    self.update_attribute(:last_name, oauth_hash[:info][:last_name])
    self.update_attribute(:pic , oauth_hash[:info][:image])
  end

  def fullname
    "#{self.first_name} #{self.last_name}"
  end
  
  def show_pic
    self.pic || "avatar.jpg"
  end
end

# master == true should be able to create other admins
# admin == true should be able to edit belts, challenges etc