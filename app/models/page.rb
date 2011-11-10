class Page < ActiveRecord::Base
  validates :slug, presence: true, length: {maximum:250}
  validates :name, presence: true, length: {maximum:250}
end
