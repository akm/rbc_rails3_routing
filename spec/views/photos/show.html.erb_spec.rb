require 'spec_helper'

describe "photos/show.html.erb" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo,
      :image_path => "Image Path",
      :caption => "Caption"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Image Path/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Caption/)
  end
end
