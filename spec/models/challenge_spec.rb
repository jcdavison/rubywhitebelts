require 'spec_helper'

describe Challenge do

    it { create(:challenge).valid?.should == true}
    
  
end