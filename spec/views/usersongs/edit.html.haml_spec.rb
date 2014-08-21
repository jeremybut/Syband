require 'spec_helper'

describe "usersongs/edit" do
  before(:each) do
    @usersong = assign(:usersong, stub_model(Usersong,
      :user => nil,
      :song => nil,
      :status => nil
    ))
  end

  it "renders the edit usersong form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", usersong_path(@usersong), "post" do
      assert_select "input#usersong_user[name=?]", "usersong[user]"
      assert_select "input#usersong_song[name=?]", "usersong[song]"
      assert_select "input#usersong_status[name=?]", "usersong[status]"
    end
  end
end
