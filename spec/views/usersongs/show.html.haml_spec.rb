require 'spec_helper'

describe "usersongs/show" do
  before(:each) do
    @usersong = assign(:usersong, stub_model(Usersong,
      :user => nil,
      :song => nil,
      :status => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
