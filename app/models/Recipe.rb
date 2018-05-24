class Recipe
  attr_accessor :recipe_name
  @@all = []

  def initialize(recipe_name)
    @recipe_name = recipe_name
  end

  def self.most_popular
    # should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
  end

  def self.all
    self.all
  end

  def users
    # should return the user instances who have recipe cards with this recipe
  end

  def ingredients
    # should return all of the ingredients in this recipe
  end

  def allergens
    # should return all the ingredients of the recipe that are allergens to the user
  end

  def add_ingredients
    # should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
  end
end
