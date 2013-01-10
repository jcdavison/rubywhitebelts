Rails.application.config.middleware.use OmniAuth::Builder do

  provider :twitter, ENV['RWB_KEY'], ENV['RWB_SECRET']
  provider :linkedin, ENV['RWB_LI_KEY'], ENV['RWB_LI_SECRET'], :scope => 'r_fullprofile r_emailaddress r_network', :fields => ["id", "email-address", "first-name", "last-name", "headline", "industry", "picture-url", "public-profile-url", "location", "connections"]
  # provider :linkedin, '6uc3tiqssjji', 'YcuMHrzaW93m8b4L'
  
end