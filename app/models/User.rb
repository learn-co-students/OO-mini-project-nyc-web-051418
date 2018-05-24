require 'pry'


class User
  ALL = []

  #instance methods
  attr_accessor :name

  def initialize(name)
    @name = name

    ALL << self
  end

  def recipes
    var = RecipeCard.all.select {|recipecard| recipecard.user == self}
    var.map {|instance_recipecard| instance_recipecard.recipe}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
      var = Allergen.all.select {|allergen_instance| allergen_instance.user == self }
      var.map {|allergen_instance| allergen_instance.ingredient}
  end

  def top_three_recipes
    var = RecipeCard.all.select {|recipecard| recipecard.user == self}
    var.sort! {|x,y| y.rating <=> x.rating}
    var[0..2]
  end

  def most_recent_recipes
    var = RecipeCard.all.select {|recipecard| recipecard.user == self}
    var.sort! {|x,y| y.date <=> x.date}
    var[0]
  end

  #class methods
  def self.all
    ALL
  end

end
