require 'spec_helper'

describe "bandsongs/edit" do
  before(:each) do
    @bandsong = assign(:bandsong, stub_model(Bandsong,
      :band => nil,
      :song => nil
    ))
  end

  it "renders the edit bandsong form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bandsong_path(@bandsong), "post" do
      assert_select "input#bandsong_band[name=?]", "bandsong[band]"
      assert_select "input#bandsong_song[name=?]", "bandsong[song]"
    end
  end
end
