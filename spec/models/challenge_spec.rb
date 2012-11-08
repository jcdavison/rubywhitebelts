require 'spec_helper'

describe Challenge do

    it { create(:challenge).valid?.should == true}
    it { create(:challenge).complete.should == false}
  
end