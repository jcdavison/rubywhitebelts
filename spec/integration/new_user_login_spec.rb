require 'spec_helper'

describe User do 
  context "New User Sign Up" do 
    it "creates a new user object, sets session corectly " do
      visit '/'
      page.has_content? "Log In"
      page.has_content? "Login Via Twitter!"
      page.has_content? "Ruby White Belts is a Community Service Provided by http://cloudcitydevelopment.com"
      click_link "Sign Up"
      fill_in 'username_or_email', :with => "rubywhitebelts"
      fill_in 'password', :with => ENV['RWB_PWD']
      click_button "Sign In"
      page.has_content? "Welcome to Ruby White Belts"
      page.has_content? "Belts"
      page.has_content? "Sign Out"
    end
  end
end