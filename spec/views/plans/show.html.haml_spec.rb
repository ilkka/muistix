require 'spec_helper'

describe "plans/show.html.haml" do
  before(:each) do
    @plan = assign(:plan, stub_model(Plan))
  end

  it "renders attributes in <p>" do
    render
  end
end
