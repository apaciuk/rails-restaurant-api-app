#Ingredients = sample_model(Ingredient, IngredientsHelper)
ingredients = Ingredients.create[{
                           "name": "Teal"
                         }, {
                           "name": "Purple"
                         }, {
                           "name": "Indigo"
                         }, {
                           "name": "Khaki"
                         }, {
                           "name": "Green"
                         }, {
                           "name": "Indigo"
                         }, {
                           "name": "Purple"
                         }, {
                           "name": "Crimson"
                         }, {
                           "name": "Crimson"
                         }, {
                           "name": "Goldenrod"
                         }]
ingredients.save
