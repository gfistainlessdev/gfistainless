class AddNamesDepthCacheToProductcategory < ActiveRecord::Migration
  def change
    add_column :productcategories, :names_depth_cache, :string
  end
end
