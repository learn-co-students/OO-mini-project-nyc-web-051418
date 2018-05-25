require'pry'
require_relative 'User'
require_relative 'RecipeCard'
require_relative 'Recipe'
require_relative 'Ingredient'
require_relative 'RecipeIngredient'
require_relative 'Allergen'



avi = User.new("avi")
david = User.new("david")

tomato = Recipe.new("tomato")
mac = Recipe.new("mac and cheese")
mac2 = Recipe.new("mac1 and cheese")
mac3 = Recipe.new("a")
mac34 = Recipe.new("2")
mac5 = Recipe.new("v")
mac55 = Recipe.new("rf")
mac23 = Recipe.new("d")

pepper = Ingredient.new("pepper")
s = Ingredient.new("salt")
g = Ingredient.new("garlic")
c = Ingredient.new("curry")

abc = RecipeIngredient.new([s,pepper,g], tomato)
fgh = RecipeIngredient.new(c,mac)

currysucks = Allergen.new(c, avi)

avi.add_recipe_card(mac, "1-2-2018", 5)
avi.add_recipe_card(tomato, "2-2-4018", 15)
avi.add_recipe_card(mac23, "2-2-4018", 225)
david.add_recipe_card(mac55, "2-2-4018", 33255)
avi.add_recipe_card(mac5, "2-2-4018", 5325)
avi.add_recipe_card(mac34, "2-2-4018", 45)
avi.add_recipe_card(mac2, "2-2-4018", 5453)
xyz = avi.add_recipe_card(mac3, "2-2-4018", 5345)
david.add_recipe_card(mac2, "12-3-2022", 45)






binding.pry
true
