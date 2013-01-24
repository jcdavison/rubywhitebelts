require 'spec_helper'

describe Completion do

  before :each do
    @user = FactoryGirl.create(:user)
  end

  it "requires a challenge, belt and user id" do
    @completion = FactoryGirl.create(:completion, user_id: @user.id)
    @completion.valid?.should == true
    @user.completions.find(@completion.id).present?.should == true
  end  

end
