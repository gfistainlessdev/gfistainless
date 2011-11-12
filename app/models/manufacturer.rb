class Manufacturer < ActiveRecord::Base
  validates :name, presence: true, length: {maximum:250}
  validates :url, length: {maximum:250}
end
