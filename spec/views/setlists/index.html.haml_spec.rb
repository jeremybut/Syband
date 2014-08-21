require 'spec_helper'

describe "setlists/index" do
  before(:each) do
    assign(:setlists, [
      stub_model(Setlist,
        :name => "Name",
        :description => "MyText"
      ),
      stub_model(Setlist,
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of setlists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
