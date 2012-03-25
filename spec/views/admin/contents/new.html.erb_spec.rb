require 'spec_helper'

describe "admin_contents/new" do
  before(:each) do
    assign(:content, stub_model(Admin::Content,
      :key => "MyString",
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new content form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_contents_path, :method => "post" do
      assert_select "input#content_key", :name => "content[key]"
      assert_select "textarea#content_body", :name => "content[body]"
    end
  end
end
