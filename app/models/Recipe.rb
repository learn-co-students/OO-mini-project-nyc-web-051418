
require_relative 'RecipeCard'
class Recipe
  attr_accessor :recipe_name
  @@all = []

  def initialize(recipe_name)
    @recipe_name = recipe_name
    @@all << self
  end

  def self.most_popular
    # should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
    highest_count = 0
    highest_recipe = nil
    Recipe.all.each do |recipe|
      count = RecipeCard.select do |recipe_card|
      end
      if count.length > highest_count
        highest_count = count.length
        highest_recipe = self
      end
    end
    highest_recipe
  end

  def self.all
    @@all
  end

  def users
    # should return the user instances who have recipe cards with this recipe
    card_list = RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
    card_list.map do |recipe_card|
      recipe_card.user
    end
  end

  def ingredients
    # should return all of the ingredients in this recipe
    card_list = RecipeIngredient.all.select do |recipe_ingredient|
      recipe_ingredient.recipe == self
    end
    card_list.map do |recipe_ingredient|
      recipe_ingredient.ingredient
    end
  end

  def allergens(user)
    # should return all the ingredients of the recipe that are allergens to the user
    recipe_ingredients = ingredients
    get_allergens = user.allergens.map do |allergen|
      allergen.ingredient
    end
    recipe_ingredients.select do |ingredient|
      get_allergens.include?(ingredient)
    end
  end

  def add_ingredients
    # should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe

  end
end
