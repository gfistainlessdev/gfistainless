class Product < ActiveRecord::Base
  belongs_to :productcategory
  
  validates :name, presence: true, length: {maximum:250}
end
