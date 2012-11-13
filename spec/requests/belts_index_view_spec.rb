require 'spec_helper'

describe "Belts#index" do
  context "should be viewable without logging in" do
    it { visit '/belts' ; page.has_content? "Rails" }
  end
end