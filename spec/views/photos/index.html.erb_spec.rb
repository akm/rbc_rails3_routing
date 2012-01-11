require 'spec_helper'

describe "photos/index.html.erb" do
  before(:each) do
    assign(:photos, [
      stub_model(Photo,
        :image_path => "Image Path",
        :caption => "Caption"
      ),
      stub_model(Photo,
        :image_path => "Image Path",
        :caption => "Caption"
      )
    ])
  end

  it "renders a list of photos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image Path".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Caption".to_s, :count => 2
  end
end
