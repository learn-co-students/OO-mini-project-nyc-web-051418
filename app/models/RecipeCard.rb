class RecipeCard
  @@all = []
  attr_accessor :user, :recipe, :date, :rating

  def initialize(user, recipe, date, rating)
    @user = user
    @recipe = recipe
    @rating = rating
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end
end
