require 'spec_helper'

describe "productcategories/new.html.erb" do
  before(:each) do
    assign(:productcategory, stub_model(Productcategory).as_new_record)
  end

  it "renders new productcategory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => productcategories_path, :method => "post" do
    end
  end
end
