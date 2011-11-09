require 'spec_helper'

describe Productcategory do
  let(:productcategory){Factory.build(:productcategory)}
  subject { productcategory }
  
  it {should validate_presence_of :name}
  it {should ensure_length_of(:name).is_at_most(250)}
end
