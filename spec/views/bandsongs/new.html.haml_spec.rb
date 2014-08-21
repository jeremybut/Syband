require 'spec_helper'

describe "bandsongs/new" do
  before(:each) do
    assign(:bandsong, stub_model(Bandsong,
      :band => nil,
      :song => nil
    ).as_new_record)
  end

  it "renders new bandsong form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bandsongs_path, "post" do
      assert_select "input#bandsong_band[name=?]", "bandsong[band]"
      assert_select "input#bandsong_song[name=?]", "bandsong[song]"
    end
  end
end
