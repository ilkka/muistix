require 'spec_helper'

describe Thing do
  before :each do
    @thing = Thing.make
  end

  it "has to have a description" do
    @thing.should be_valid
    @thing.description = nil
    @thing.should_not be_valid
  end

  it "can have a valid URI as uri" do
    @thing.uri = nil
    @thing.should be_valid
    @thing.uri = ":___;"
    @thing.should_not be_valid
    @thing.uri = "http://" + Faker::Internet.domain_name + "/some/thing"
    @thing.should be_valid
  end
end
