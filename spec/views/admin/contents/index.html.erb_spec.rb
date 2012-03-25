require 'spec_helper'

describe "admin_contents/index" do
  before(:each) do
    assign(:admin_contents, [
      stub_model(Admin::Content,
        :key => "Key",
        :body => "MyText"
      ),
      stub_model(Admin::Content,
        :key => "Key",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of admin_contents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Key".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
