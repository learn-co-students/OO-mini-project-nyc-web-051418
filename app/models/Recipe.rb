class Recipe
  attr_accessor :name, :ingredient

  ALL = []


  def initialize(name)
    @name = name

    ALL << self
  end

  def self.all
    ALL
  end

  def add_recipe_card(user, date, rating)
    RecipeCard.new(user, self, date, rating)
  end

  def recipes_from_recipecard
    RecipeCard.all.select do |recipecard|
      recipecard.recipe == self
    end
  end

  def users
    recipes_from_recipecard.map do |recipe|
      recipe.user
    end
  end

  def self.most_popular
    cards_hash = Hash.new(0)
    RecipeCard.all.map do |recipecard|
      cards_hash[recipecard.recipe] += 1
    end
    cards_hash.sort_by do |key, value|
      value
    end.last
  end

  def recipes_from_recipeingredient
    RecipeIngredient.all.select do |recipeingredient|
      recipeingredient.recipe == self
    end
  end

  def ingredients
    recipes_from_recipeingredient.map do |recipeingredient|
      recipeingredient.ingredient
    end
  end

  def add_ingredients(ingredients)
    ingredients.each {|ingredient| RecipeIngredient.new(self,ingredient)}
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.ingredient ==self.ingredient
    end
  end

end
