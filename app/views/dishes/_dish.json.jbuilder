json.extract! dish, :id, :name, :created_at, :updated_at


json.restaurant do
  json.id dish.restaurant.id
  json.name dish.restaurant.name
  json.url restaurant_url(dish.restaurant, format: :json)
end
json.ingredients(dish.measured_ingredients) do |measured_ingredient|
  json.id measured_ingredient.id
  json.name measured_ingredient.ingredient.name
  json.amount measured_ingredient.amount
  json.measurement measured_ingredient.measurement.name
  json.url ingredients_url(measured_ingredient.ingredient, format: :json)

end

json.image_url url_for(dish)
#json.thumbnail.url rails_representation_url(dish.image.variant(resize: '200x200').processed, only_path: true)
json.url dish_url(dish, format: :json)
