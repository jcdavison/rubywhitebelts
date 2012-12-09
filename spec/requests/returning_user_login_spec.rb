require 'spec_helper'

# describe User do
#   context "Returning User Sign In" do 
#     it "should be greeted with Welcome Back flash " do
#       visit '/'
#       page.has_content? "Log In"
#       page.has_content? "Login Via Twitter!"
#       page.has_content? "Ruby White Belts is a Community Service Provided by http://cloudcitydevelopment.com"
#       click_link "Sign Up"
#       fill_in 'username_or_email', :with => "rubywhitebelts"
#       fill_in 'password', :with => ENV['RWB_PWD']
#       click_button "Sign In"
#       page.has_content? "Welcome to Ruby White Belts"
#       page.has_content? "Belts"
#       page.has_content? "Sign Out"
#       click_link "Sign Out"
#       page.has_content? "You Are Now Logged Out"
#       click_link "Sign Up"
#       page.has_content? "Welcome Back"
#     end
#   end
# end