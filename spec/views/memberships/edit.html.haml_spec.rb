require 'spec_helper'

describe "memberships/edit" do
  before(:each) do
    @membership = assign(:membership, stub_model(Membership,
      :user => nil,
      :band => nil,
      :user_asked => false,
      :band_asked => false,
      :is_admin => false
    ))
  end

  it "renders the edit membership form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", membership_path(@membership), "post" do
      assert_select "input#membership_user[name=?]", "membership[user]"
      assert_select "input#membership_band[name=?]", "membership[band]"
      assert_select "input#membership_user_asked[name=?]", "membership[user_asked]"
      assert_select "input#membership_band_asked[name=?]", "membership[band_asked]"
      assert_select "input#membership_is_admin[name=?]", "membership[is_admin]"
    end
  end
end
