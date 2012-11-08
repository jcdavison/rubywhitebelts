require 'spec_helper'

describe "A logged in User" do
  context "should be able to access all belts" do
    
    it { visit '/'
        click_link "Sign Up"
        fill_in 'username_or_email', :with => "rubywhitebelts"
        fill_in 'password', :with => ENV['RWB_PWD']
        click_button "Sign In"
        click_link "Belts"
        page.has_content? "Rails" }

    it { visit '/belts'; page.should have_no_content "Rails"}
  end
end