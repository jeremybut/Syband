require 'spec_helper'

describe "setlistsongs/show" do
  before(:each) do
    @setlistsong = assign(:setlistsong, stub_model(Setlistsong,
      :setlist => nil,
      :song => nil,
      :position => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1/)
  end
end
