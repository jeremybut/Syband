require 'spec_helper'

describe "statuses/edit" do
  before(:each) do
    @status = assign(:status, stub_model(Status,
      :label => "MyString",
      :percentage => 1
    ))
  end

  it "renders the edit status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", status_path(@status), "post" do
      assert_select "input#status_label[name=?]", "status[label]"
      assert_select "input#status_percentage[name=?]", "status[percentage]"
    end
  end
end
