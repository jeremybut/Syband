require 'spec_helper'

describe "setlistsongs/index" do
  before(:each) do
    assign(:setlistsongs, [
      stub_model(Setlistsong,
        :setlist => nil,
        :song => nil,
        :position => 1
      ),
      stub_model(Setlistsong,
        :setlist => nil,
        :song => nil,
        :position => 1
      )
    ])
  end

  it "renders a list of setlistsongs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
