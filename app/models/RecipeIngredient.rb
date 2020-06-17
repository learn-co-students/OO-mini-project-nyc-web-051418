require 'pry'

class RecipeIngredient
  ALL = []

  #instance methods
  attr_accessor :ingredient, :recipe

  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredient = ingredient

    ALL << self
  end

  #class methods
  def self.all
    ALL
  end

end
