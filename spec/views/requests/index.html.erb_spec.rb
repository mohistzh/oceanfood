require 'spec_helper'

describe "requests/index" do
  before(:each) do
    assign(:requests, [
      stub_model(Request,
        :title => "Title",
        :applier => "Applier",
        :file => "File",
        :reason => "MyText"
      ),
      stub_model(Request,
        :title => "Title",
        :applier => "Applier",
        :file => "File",
        :reason => "MyText"
      )
    ])
  end

  it "renders a list of requests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Applier".to_s, :count => 2
    assert_select "tr>td", :text => "File".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
