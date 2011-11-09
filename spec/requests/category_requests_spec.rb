require 'spec_helper'

describe 'visitng category maintenance page' do
  context 'listing all categories' do
    let!(:cata){Factory(:productcategory,name:"CATA")}
    it 'should be success' do
      get 'productcategories'
    
      response.should be_success
    end
    
    it 'should show the categories' do
      visit productcategories_path
      page.should have_content(cata.name)
    end
  end
  
end