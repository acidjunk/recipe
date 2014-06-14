class Ingredient < ActiveRecord::Base
  has_many :ingredient_items
  has_many :recipes, :through => :ingredient_items
end