class UserMailer < ActionMailer::Base
  default from: "john@rubywhitebelts.com"

  def notify_john(message)
    @message = message
    mail :to => "johncdavison@gmail.com", :subject => "hey dude this is working"
  end

  def message_user(user, subject)
    @user = user
    mail :to => user.email, subject: => subject
  end

end
