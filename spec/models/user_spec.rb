require 'spec_helper'

describe User do

  context "should be invalid without email, secret, token, id " do 

    before :each do
      @user = User.new(:email => "jcdavison", :uid => "1234", :secret => "some_secret", :token => "some_token")
      @user2 = User.new(:email => "jcdavison")
      @user3 = User.new(:email => "jcdavison", :uid => "1234", :secret => "some_secret", :token => "some_token")
    end

    it { @user.valid?.should == true }
    it { @user2.valid?.should == false }
    it { @user.save.should == true }
    it { @user.save.should == true }
    it { @user.admin.should == false }
    it { @user.master.should == false }
    it { @user.white_belt.should == false }

  end

end