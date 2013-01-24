require 'spec_helper'

describe "Belts#index" do


  before :each do 
    @rails = FactoryGirl.create(:belt, title: "Rails", description: "a web framework")
    @ruby = FactoryGirl.create(:belt, title: "Ruby", description: "a scripting language")
  end

  it "should list all belts" do
    p Belt.all
    p @monkey = Belt.new(title: "monkey", description: "a web framework")
    p @monkey.save
    p @monkey
    p Belt.all

    visit '/belts'

    page.should have_content "Rails" 
    page.should have_content "a web framework"
    page.should have_content "Ruby"
    page.should have_content "a scripting language" 
  end


end