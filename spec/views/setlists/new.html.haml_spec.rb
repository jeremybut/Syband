require 'spec_helper'

describe "setlists/new" do
  before(:each) do
    assign(:setlist, stub_model(Setlist,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new setlist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", setlists_path, "post" do
      assert_select "input#setlist_name[name=?]", "setlist[name]"
      assert_select "textarea#setlist_description[name=?]", "setlist[description]"
    end
  end
end
