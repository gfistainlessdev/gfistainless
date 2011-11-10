require 'spec_helper'

describe "productcategories/index.html.erb" do
  before(:each) do
    assign(:productcategories, [
      stub_model(Productcategory),
      stub_model(Productcategory)
    ])
  end

  it "renders a list of productcategories" do
    render
  end
end
