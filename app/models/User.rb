class User
  attr_accessor :name,:ingredient

  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def users
    RecipeCard.all.select do |recipecard|
      recipecard.user == self
    end
  end

  def recipes
    users.map do |user|
      user.recipe
    end
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient,self)
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user==self
    end
  end

  def top_three_recipes
    user_recipes=RecipeCard.all.select do |recipe|
      recipe.user == self
    end
    sortted_recipe=user_recipes.sort_by do |recipe|
      recipe.rating
    end
    sortted_recipe[-3..-1]
  end

  def most_recent_recipe
    user_recipes=RecipeCard.all.select do |recipe|
      recipe.user == self
    end.last
  end



end
