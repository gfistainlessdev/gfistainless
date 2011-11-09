require 'spec_helper'

describe 'visitng category maintenance page' do
  context 'listing all categories' do
    it 'should show all categories' do
      get 'productcategories'
    
      response.should be_success
    end
  end
  
end