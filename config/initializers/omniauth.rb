Rails.application.config.middleware.use OmniAuth::Builder do

  provider :twitter, ENV['RWB_KEY'], ENV['RWB_SECRET']
  provider :linkedin, "bp273rnw3bga", "FUzm8Mump9xPBvtz"
  # provider :linkedin, '6uc3tiqssjji', 'YcuMHrzaW93m8b4L'
  
end