require 'pry'

require_relative 'Recipe.rb'
require_relative 'RecipeCard.rb'
require_relative 'RecipeIngredient.rb'
require_relative 'Ingredient.rb'
require_relative 'User.rb'
require_relative 'Allergen.rb'

alberto = User.new("Alberto")
max = User.new("Max")

mac_cheese = Recipe.new("Macaroni and Cheese")
pizza = Recipe.new("Pizza")
wings = Recipe.new("Wings")
paella = Recipe.new("Paella")

pasta = Ingredient.new("Pasta")
rice = Ingredient.new("Rice")
buffalo = Ingredient.new("Buffalo Sauce")
chicken = Ingredient.new("Chicken Wings")
fish = Ingredient.new("Fish")
cheese = Ingredient.new("Cheese")
dough = Ingredient.new("Dough")

alberto.add_recipe_card(paella, 1, 10)
alberto.add_recipe_card(pizza, 2, 6)
alberto.add_recipe_card(wings, 3, 8)

paella_card = max.add_recipe_card(paella, 1, 10)
max.add_recipe_card(mac_cheese, 1, 10)
max.add_recipe_card(pasta, 3, 8)

alberto.declare_allergen(fish)
max.declare_allergen(cheese)

alberto.top_three_recipes

mac_cheese.add_ingredients([cheese, pasta])
pizza.add_ingredients([cheese, dough])
paella.add_ingredients([rice, chicken, fish])
wings.add_ingredients([chicken, buffalo])


mac_cheese.allergens

Recipe.most_popular
binding.pry
true
# Pry.start
