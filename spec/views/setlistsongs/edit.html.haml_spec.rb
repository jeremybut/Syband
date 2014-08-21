require 'spec_helper'

describe "setlistsongs/edit" do
  before(:each) do
    @setlistsong = assign(:setlistsong, stub_model(Setlistsong,
      :setlist => nil,
      :song => nil,
      :position => 1
    ))
  end

  it "renders the edit setlistsong form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", setlistsong_path(@setlistsong), "post" do
      assert_select "input#setlistsong_setlist[name=?]", "setlistsong[setlist]"
      assert_select "input#setlistsong_song[name=?]", "setlistsong[song]"
      assert_select "input#setlistsong_position[name=?]", "setlistsong[position]"
    end
  end
end
