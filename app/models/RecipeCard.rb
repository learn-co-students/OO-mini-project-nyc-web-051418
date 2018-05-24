require 'pry'

class RecipeCard

  attr_accessor :date, :rating, :user, :recipe, :recipe_card_title

  ALL = []

  def initialize(recipe_card_title, recipe)
    @recipe_card_title = recipe_card_title
    @date = date
    @rating = rating
    @user = user
    @recipe = recipe
    ALL << self
  end

  def self.all
    ALL
  end

  def date
    @date
  end

  def rating
    @rating
  end

  def user
    @user
  end

  def recipe
    @recipe
  end


end

# pizza = RecipeCard.new(recipe_card_title: "pizza", recipe: "pizza")
# pasta = RecipeCard.new(recipe_card_title: "pasta", recipe: "pasta")
# taco = RecipeCard.new(recipe_card_title: "taco", recipe: "taco")
