require 'spec_helper'

describe Thing do
  before :each do
    @thing = Thing.new
  end

  it "has to have a description" do
    @thing.should_not be_valid
    @thing.description = "This is a thing"
    @thing.should be_valid
  end
end
