require 'spec_helper'

describe "admin_contents/show" do
  before(:each) do
    @content = assign(:content, stub_model(Admin::Content,
      :key => "Key",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Key/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
