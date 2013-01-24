require 'spec_helper'

describe Belt do 

  context "Belts must have title and descriptions" do
    
    before :each do
      @belt = FactoryGirl.build(:belt)
    end

    it { @belt.valid?.should == true }
    it { @belt.save.should == true }
    
  end

  context "Belts must have unique titles" do

    it {  @belt = create(:belt)
          @belt.title = "Ruby"
          @belt.save.should == true
          @belt2 = create(:belt)
          @belt2.title = "Ruby"
          @belt2.save.should == false
       }

  end

end