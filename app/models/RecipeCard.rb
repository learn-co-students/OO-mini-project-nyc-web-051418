require 'pry'


class RecipeCard
  ALL = []

  #instance methods
  attr_accessor :user, :recipe

  def initialize(user, recipe)
    @user = user
    @recipe = recipe

    ALL << self
  end

  #class methods
  def self.all
    ALL
  end


end
