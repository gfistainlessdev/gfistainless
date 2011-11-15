class Manufacturer < ActiveRecord::Base
  has_many :products
  validates :name, presence: true, length: {maximum:250}
  validates :url, length: {maximum:250}
end
