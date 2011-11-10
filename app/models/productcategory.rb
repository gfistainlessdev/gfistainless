class Productcategory < ActiveRecord::Base
  has_ancestry
  before_save :cache_ancestry
  
  validates :name, presence: true, length: {maximum:250}

  def cache_ancestry
    self.names_depth_cache = path.map(&:name).join('/')
  end
  
end
