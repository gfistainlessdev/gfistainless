require 'spec_helper'

describe "productcategories/show.html.erb" do
  before(:each) do
    @productcategory = assign(:productcategory, stub_model(Productcategory))
  end

  it "renders attributes in <p>" do
    render
  end
end
