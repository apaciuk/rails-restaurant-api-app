class MeasuredIngredient < ApplicationRecord
  belongs_to :dish
  belongs_to :ingredients
  belongs_to :measurements
end
