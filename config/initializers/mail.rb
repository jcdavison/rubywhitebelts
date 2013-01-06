ActionMailer::Base.register_interceptor(SendGrid::MailInterceptor)

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '25',
  :domain => 'rubywhitebelts.com',
  :authentication => :plain,
  :user_name => 'john@rubywhitebelts.com',
  :password => ENV['RWB_PWD']
}