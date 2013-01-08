ActionMailer::Base.register_interceptor(SendGrid::MailInterceptor)

# ActionMailer::Base.smtp_settings = {
#   :address => 'smtp.sendgrid.net',
#   :port => '25',
#   :domain => 'rubywhitebelts.com',
#   :authentication => :plain,
#   :user_name => 'john@rubywhitebelts.com',
#   :password => ENV['RWB_PWD']
# }

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['SENDGRID_USERNAME'],
  :password       => ENV['SENDGRID_PASSWORD'],
  :domain         => 'heroku.com'
}
ActionMailer::Base.delivery_method = :smtp