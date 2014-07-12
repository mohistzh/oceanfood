require 'spec_helper'

describe "requests/new" do
  before(:each) do
    assign(:request, stub_model(Request,
      :title => "MyString",
      :applier => "MyString",
      :file => "MyString",
      :reason => "MyText"
    ).as_new_record)
  end

  it "renders new request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", requests_path, "post" do
      assert_select "input#request_title[name=?]", "request[title]"
      assert_select "input#request_applier[name=?]", "request[applier]"
      assert_select "input#request_file[name=?]", "request[file]"
      assert_select "textarea#request_reason[name=?]", "request[reason]"
    end
  end
end
