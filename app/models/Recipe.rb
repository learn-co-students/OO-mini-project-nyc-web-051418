class Recipe
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def find_ingredient
    RecipeIngredient.all.select {|a| a.recipe = self}
  end

  def self.most_popular

  end

  def add_ingredients(ingredients)
    RecipeIngredient.new(ingredients, self)
  end

  def find_recipe
    RecipeCard.all.select {|x| x.recipe == self}
  end

  def users
    find_recipe.map {|x| x.user}
  end
end
