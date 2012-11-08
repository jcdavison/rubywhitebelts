require 'spec_helper'

describe User do

  context "should be invalid without twitter handle, secret, token, id " do 

    before :each do
      @user = User.new(:twitter_handle => "jcdavison", :twitter_id => "1234", :twitter_secret => "some_secret", :twitter_token => "some_token")
      @user2 = User.new(:twitter_handle => "jcdavison")
      @user3 = User.new(:twitter_handle => "jcdavison", :twitter_id => "1234", :twitter_secret => "some_secret", :twitter_token => "some_token")
    end

    it { @user.valid?.should == true; @user2.valid?.should == false ; @user3.valid?.should == true }
    it { @user.save.should == true ; @user3.save.should == false }
    it { @user.save.should == true ; User.exists?(twitter_id: "1234").should == true }
    it { @user.admin.should == false }
    it { @user.master.should == false }
    it { @user.white_belt.should == false }

  end

end