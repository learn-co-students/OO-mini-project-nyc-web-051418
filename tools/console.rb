require_relative '../config/environment.rb'

david = User.new("david")
steven = User.new("steven")
alex = User.new("alex")
greg = User.new("greg")
matt = User.new("matt")
chris =User.new("chris")


chicken = Recipe.new("chicken")
pasta = Recipe.new("pasta")
pizza = Recipe.new("pizza")
beef = Recipe.new("beef")
sushi = Recipe.new("sushi")

tomato = Ingredient.new("tomato")
lemon = Ingredient.new("lemon")
orange = Ingredient.new("orange")
salt = Ingredient.new("salt")
olive = Ingredient.new("olive")

chicken_tomato = chicken.add_ingredients([tomato,lemon])
pasta_lemon = pasta.add_ingredients([lemon,orange])
orange_pizza = orange.add_recipes(pizza)
chicken_orange=chicken.add_ingredients([tomato,lemon])
pizza.add_recipe_card(steven, "monday", 5)

steven.declare_allergen(orange)
alex.declare_allergen(orange)
matt.declare_allergen(lemon)
chris.declare_allergen(lemon)
greg.declare_allergen(orange)
steven.declare_allergen(tomato)
steven.declare_allergen(lemon)
RecipeCard.new(steven, pasta, "monday", 3)
RecipeCard.new(steven, pizza, "monday", 5)
RecipeCard.new(steven, chicken, "monday", 7)
RecipeCard.new(alex, pizza, "monday", 15)
RecipeCard.new(greg, pizza, "monday", 5)
RecipeCard.new(steven, beef, "monday", 1)
RecipeCard.new(david, sushi, "today", 100)
RecipeCard.new(david, pizza, "yesterday", 800)
RecipeCard.new(david, beef, "last year", 5)
RecipeCard.new(david, pasta, "tomorrow", 10)





binding.pry
