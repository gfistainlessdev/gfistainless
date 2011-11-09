class ProductcategoriesController < ApplicationController
  def index
    @categories=Productcategory.all
  end
end