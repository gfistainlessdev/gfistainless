class Productcategory < ActiveRecord::Base
  has_ancestry
  validates :name, presence: true, length: {maximum:250}

  
end
