require 'spec_helper'

describe "requests/show" do
  before(:each) do
    @request = assign(:request, stub_model(Request,
      :title => "Title",
      :applier => "Applier",
      :file => "File",
      :reason => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Applier/)
    rendered.should match(/File/)
    rendered.should match(/MyText/)
  end
end
