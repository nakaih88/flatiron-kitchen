class Recipe < ActiveRecord::Base
    has_many :recipe_ingredients
    has_many :recipies , through: :recipe_ingredients
  end