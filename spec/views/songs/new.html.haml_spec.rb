require 'spec_helper'

describe "songs/new" do
  before(:each) do
    assign(:song, stub_model(Song,
      :title => "MyString",
      :artist => "MyString",
      :lyrics => "MyText"
    ).as_new_record)
  end

  it "renders new song form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", songs_path, "post" do
      assert_select "input#song_title[name=?]", "song[title]"
      assert_select "input#song_artist[name=?]", "song[artist]"
      assert_select "textarea#song_lyrics[name=?]", "song[lyrics]"
    end
  end
end
