require 'spec_helper'

describe "setlists/edit" do
  before(:each) do
    @setlist = assign(:setlist, stub_model(Setlist,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit setlist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", setlist_path(@setlist), "post" do
      assert_select "input#setlist_name[name=?]", "setlist[name]"
      assert_select "textarea#setlist_description[name=?]", "setlist[description]"
    end
  end
end
