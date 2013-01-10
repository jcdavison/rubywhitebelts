class UserMailer < ActionMailer::Base
  default from: "john@rubywhitebelts.com"

  def notify_john(message)
    @message = message
    mail :to => "johncdavison@gmail.com", :subject => "hey dude this is working"
  end

  def message_user(user, message)
    @user = user
    @message = message
    mail :to => @user.email, :subject => @message.title
  end

end
