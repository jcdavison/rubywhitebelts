require 'spec_helper'

describe Challenge do

  before :each do 
    @belt = FactoryGirl.create(:belt)
    @challenge = FactoryGirl.create(:challenge, belt_id: @belt.id)
    @user = FactoryGirl.create(:user)
  end

  it "must have a belt_id and description " do
    @challenge.valid?.should == true
  end

  it "#complete?" do
    @challenge.complete?(@user.id).should == false
  end

  it "#complete? when associated completion exists" do
    @completion = FactoryGirl.create(:completion, user_id: @user.id, belt_id: @belt.id, challenge_id: @challenge.id)
    p User.find(@user.id).completions.where("challenge_id = ?",@challenge.id).exists?
    @challenge.complete?(@user.id).should == true
  end



end