class UserMailer < ActionMailer::Base
  default from: "john@rubywhitebelts.com"

  def notify_john
    @user = User.find_by_email("johncdavison@gmail.com")
    mail :to => @user.email, :subject => "hey dude this is working"
  end

  def notify_all_users
    @user = User.all
    @url
  end

end
