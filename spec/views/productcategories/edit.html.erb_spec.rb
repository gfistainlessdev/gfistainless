require 'spec_helper'

describe "productcategories/edit.html.erb" do
  before(:each) do
    @productcategory = assign(:productcategory, stub_model(Productcategory))
  end

  it "renders the edit productcategory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => productcategories_path(@productcategory), :method => "post" do
    end
  end
end
