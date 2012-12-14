require 'spec_helper'

describe Belt do 

  before :each do
    @belt = FactoryGirl.build(:belt)
  end

  it { @belt.valid?.should == true ; @belt.save.should == true }
  #it { @belt.can_manage_challenge?(Challenge.new).should be_true }

end