# mapping Dish class to dishes table
class Dish < ActiveRecord::Base
  validates :name, presence: true
end