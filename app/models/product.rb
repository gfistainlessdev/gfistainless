class Product < ActiveRecord::Base
  belongs_to :productcategory
  belongs_to :manufacturer
  
  validates :name, presence: true, length: {maximum:250}
end
