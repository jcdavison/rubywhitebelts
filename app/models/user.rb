class User < ActiveRecord::Base
  attr_accessible :email, :name, :twitter_handle, :twitter_id, :twitter_secret, :twitter_token
  validates_presence_of :twitter_handle, :twitter_id, :twitter_secret, :twitter_token
  validates_uniqueness_of :twitter_id, :twitter_handle, { :alert => "That @twitter is already registered" }

  def set_attributes(oauth_hash)
    self.twitter_id = oauth_hash[:uid]
    self.twitter_handle = oauth_hash[:info][:nickname]
    self.twitter_token = oauth_hash[:credentials][:token]
    self.twitter_secret = oauth_hash[:credentials][:secret]
  end
  

end
