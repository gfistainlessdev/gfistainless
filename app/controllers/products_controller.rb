class ProductsController < ApplicationController
  def index
    @categories=Productcategory.scoped
  end
  
  def show
    @category=Productcategory.find(params[:id])
    
    @category_ancestors=@category.ancestors
    @category_children=@category.children.scoped
    @products=Product.where(productcategory_id: @category.subtree_ids)
  end
end