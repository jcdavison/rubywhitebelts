Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['RWB_KEY'], ENV['RWB_SECRET']
end