#Ingredients = sample_model(Ingredient, IngredientsHelper)

Ingredients.each do |ingredient|
  dish.measured_ingredients.create(
    amount: rand(MEASUREMENT_AMOUNT_RANGE),
    ingredient: ingredient,
    measurement: measurements.sample
  )
end
