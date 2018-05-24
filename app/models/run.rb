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
wings = Ingredient.new("Chicken Wings")
fish = Ingredient.new("Fish")
cheese = Ingredient.new("Cheese")
dough = Ingredient.new("Dough")

# RecipeIngredient.new("Macaroni and Cheese", "Pasta")
# RecipeIngredient.new("Macaroni and Cheese", "Cheese")
# RecipeIngredient.new("Pizza", "Dough")
# RecipeIngredient.new("Pizza", "Cheese")
# RecipeIngredient.new("Wings", "Chicken Wings")
# RecipeIngredient.new("Wings", "Buffalo Sauce")
# RecipeIngredient.new("Paella", "Rice")
# RecipeIngredient.new("Paella", "Fish")
# RecipeIngredient.new("Paella", "Chicken Wings")
#
# RecipeCard.new("Alberto", "Paella")
# RecipeCard.new("Alberto", "Pizza")
# RecipeCard.new("Alberto", "Macaroni and Cheese")
# RecipeCard.new("Max", "Chicken Wings")
# RecipeCard.new("Max", "Paella")
# RecipeCard.new("Max", "Macaroni and Cheese")
#
# Allergen.new("Alberto", "Buffalo Sauce")
# Allergen.new("Max", "Cheese")

Pry.start
