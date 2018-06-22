require 'pry'

class RecipeCard

  attr_accessor :date, :rating, :user, :recipe, :recipe_card_title

  ALL = []

  def initialize(recipe_card_title, recipe, date, rating, user)
    @recipe_card_title = recipe_card_title
    @date = date
    @rating = rating
    @user = user
    @recipe = Recipe.new(recipe_card_title, self)
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
