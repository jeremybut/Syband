require 'spec_helper'

describe "bandsongs/index" do
  before(:each) do
    assign(:bandsongs, [
      stub_model(Bandsong,
        :band => nil,
        :song => nil
      ),
      stub_model(Bandsong,
        :band => nil,
        :song => nil
      )
    ])
  end

  it "renders a list of bandsongs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
