json.extract! measured_ingredient, :id, :amount, :dish_id, :ingredients_id, :measurements_id, :created_at, :updated_at
json.url measured_ingredient_url(measured_ingredient, format: :json)
