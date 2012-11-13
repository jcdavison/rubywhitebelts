require 'spec_helper'

describe User do 
  context "New User Sign Up" do 
    it "creates a new user object, sets session corectly " do
      p "Rails.env"; p Rails.env
      p user = User.all.count
      visit '/'
      page.has_content? "Sign Up"
      click_link "Sign Up"
      fill_in 'username_or_email', :with => "rubywhitebelts"
      fill_in 'password', :with => ENV['RWB_PWD']
      click_button "Sign In"
      page.has_content? "Welcome to Ruby White Belts"
      User.all.count.should == user + 1
    end
  end
end