class UserMailer < ActionMailer::Base
  default from: "john@rubywhitebelts.com"

  def notify_john
    mail :to => "johncdavison@gmail.com", :subject => "hey dude this is working"
  end

  def notify_all_users
    @user = User.all
    @url
  end

end
