require 'spec_helper'

describe "bands/edit" do
  before(:each) do
    @band = assign(:band, stub_model(Band,
      :picture => nil
    ))
  end

  it "renders the edit band form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", band_path(@band), "post" do
      assert_select "input#band_picture[name=?]", "band[picture]"
    end
  end
end
