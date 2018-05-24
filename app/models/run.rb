require_relative 'User.rb'
require_relative 'Recipe.rb'
require_relative 'Ingredient.rb'
require 'pry'

dates = ['05-2006', '12-2006', '04-2007', '08-2007', '09-2012', '11-2012', '05-2013']
d1 = dates[0]
d2 = dates[1]
d3 = dates[2]
d4 = dates[3]
d5 = dates[4]
d6 = dates[5]
d7 = dates[6]


tony = User.new("Tony")
kurt = User.new("Kurt")

omelet = Recipe.new("omelet")
taco = Recipe.new("taco")
fries = Recipe.new("fries")
salad = Recipe.new("salad")
lobster = Recipe.new("lobster")
burger = Recipe.new("burger")
soup = Recipe.new("soup")

tomato = Ingredient.new("tomato")
salt = Ingredient.new("salt")
milk = Ingredient.new("milk")

milk_allergen = Allergen.new(milk, kurt)
milk_allergen2 = Allergen.new(milk, tony)
salt_allergen = Allergen.new(salt, kurt)

ri1 = RecipeIngredient.new(taco,tomato)
ri2 = RecipeIngredient.new(omelet,tomato)
ri3 = RecipeIngredient.new(soup,milk)


rc = kurt.add_recipe_card(taco, d1, 3)
rc2 = tony.add_recipe_card(omelet, d2, 5)
rc3 = kurt.add_recipe_card(taco, d3, 9)
rc4 = kurt.add_recipe_card(omelet, d4, 2)
rc5 = kurt.add_recipe_card(omelet, d5, 10)
rc6 = kurt.add_recipe_card(omelet, d6, 0)
binding.pry
