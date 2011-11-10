require 'spec_helper'

describe Productcategory do
  context 'basic cat' do
    let(:productcategory){Factory.build(:productcategory)}
    subject { productcategory }
  
    it {should validate_presence_of :name}
    it {should ensure_length_of(:name).is_at_most(250)}
  end
  
  context 'nested cat' do
    let(:product_category_with_parent){Factory.create(:product_category_with_parent)}
    subject { product_category_with_parent }
    
    it "should have a parent" do
      product_category_with_parent.parent_id.should_not be_nil
    end
    
  end
end
