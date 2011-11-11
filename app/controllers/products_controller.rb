class ProductsController < ApplicationController
  def index
    @categories=Productcategory.scoped
  end
  
  def show
    @category=Productcategory.find(params[:id])
    @category_ancestors=@category.ancestors
    @category_children=@category.children
    @products=Product.where(category_id: @category.subtree_id)
  end
end