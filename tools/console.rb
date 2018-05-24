require_relative '../config/environment.rb'

breakfast = Recipe.new("breakfast")
lunch = Recipe.new("lunch")
dinner = Recipe.new("dinner")

richard = User.new("Richard")
john = User.new("John")

milk = Ingredient.new("milk")
peanut_butter = Ingredient.new("peanut butter")
flour = Ingredient.new("flour")

milk_allergy = Allergen.new(john, milk)
peanut_allergy = Allergen.new(richard, peanut_butter)
john_peanut_allergy = Allergen.new(john, peanut_butter)

RecipeCard.new(dinner, richard, 3, "1999")
RecipeCard.new(dinner, john, 2, "1999")
RecipeCard.new(lunch, john, 1, "1999")
RecipeCard.new(lunch, john, 4, "1999")
RecipeCard.new(lunch, john, 5, "1999")
binding.pry
