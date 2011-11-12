require 'spec_helper'

describe Manufacturer do
  it {should validate_presence_of :name}
  it {should ensure_length_of(:name).is_at_most(250)}
  
  it {should ensure_length_of(:url).is_at_most(250)}
end
