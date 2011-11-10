require 'spec_helper'

describe Product do
 # let(:product){Factory.build(:product)}
#  subject { product }
  
  it {should validate_presence_of :name}
  it {should ensure_length_of(:name).is_at_most(250)}
  
  it {should belong_to(:productcategory)}
end
