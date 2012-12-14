require 'spec_helper'

describe Challenge do

    it { FactoryGirl.create(:challenge).valid?.should == true}
    
  
end