
require_relative 'User.rb'
class RecipeCard
  attr_accessor :recipe, :recipe_user_id, :rating, :date

  @@all = []
  def initialize(recipe, recipe_user_id, rating, date)
    @recipe = recipe
    @recipe_user_id = recipe_user_id
    @rating = rating
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end
end
