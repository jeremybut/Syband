require 'spec_helper'

describe "pictures/new" do
  before(:each) do
    assign(:picture, stub_model(Picture,
      :imageable => nil
    ).as_new_record)
  end

  it "renders new picture form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pictures_path, "post" do
      assert_select "input#picture_imageable[name=?]", "picture[imageable]"
    end
  end
end
