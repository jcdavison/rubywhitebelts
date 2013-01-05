require 'spec_helper'

describe Challenge do

    it "must have a belt_id and description " do
      Challenge.new.save.should == false
      @challenge = FactoryGirl.create(:challenge)
      @challenge.valid?.should == true
    end

    it "#complete?" do
      @challenge = Challenge.create(description: "use .select", belt_id: 1)
      @user = FactoryGirl.create(:user)
      @challenge.complete?(@user.id).should == false
    end

end