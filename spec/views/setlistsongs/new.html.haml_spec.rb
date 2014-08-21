require 'spec_helper'

describe "setlistsongs/new" do
  before(:each) do
    assign(:setlistsong, stub_model(Setlistsong,
      :setlist => nil,
      :song => nil,
      :position => 1
    ).as_new_record)
  end

  it "renders new setlistsong form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", setlistsongs_path, "post" do
      assert_select "input#setlistsong_setlist[name=?]", "setlistsong[setlist]"
      assert_select "input#setlistsong_song[name=?]", "setlistsong[song]"
      assert_select "input#setlistsong_position[name=?]", "setlistsong[position]"
    end
  end
end
