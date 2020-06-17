require 'pry'


class RecipeCard
  ALL = []

  #instance methods
  attr_accessor :user, :recipe, :date, :rating

  def initialize(user, recipe, date, rating)
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating

    ALL << self
  end

  #class methods
  def self.all
    ALL
  end


end
