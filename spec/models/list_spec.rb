require 'spec_helper'

describe List do
  it "must have a description" do
    list = List.new
    list.should_not be_valid
    list.description = "asdfasdf"
    list.should be_valid
  end
end
