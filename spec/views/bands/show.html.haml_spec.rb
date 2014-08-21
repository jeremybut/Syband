require 'spec_helper'

describe "bands/show" do
  before(:each) do
    @band = assign(:band, stub_model(Band,
      :picture => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
