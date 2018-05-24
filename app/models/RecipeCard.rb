class RecipeCard
  attr_accessor :user, :recipe, :date, :rating

  ALL = []

  def initialize(user, recipe, date, rating)
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
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
