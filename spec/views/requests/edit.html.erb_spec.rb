require 'spec_helper'

describe "requests/edit" do
  before(:each) do
    @request = assign(:request, stub_model(Request,
      :title => "MyString",
      :applier => "MyString",
      :file => "MyString",
      :reason => "MyText"
    ))
  end

  it "renders the edit request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", request_path(@request), "post" do
      assert_select "input#request_title[name=?]", "request[title]"
      assert_select "input#request_applier[name=?]", "request[applier]"
      assert_select "input#request_file[name=?]", "request[file]"
      assert_select "textarea#request_reason[name=?]", "request[reason]"
    end
  end
end
