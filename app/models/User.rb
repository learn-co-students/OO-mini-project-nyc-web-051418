class User
  attr_accessor :name, :recipe_cards, :recipe

  ALL = []

  def initialize(name)
    @name = name
    @recipe_cards = []
    ALL << self
  end

  def self.all
      ALL
  end

  def recipes
    self.recipe_cards.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def add_recipe_card(recipe_card_title, recipe)
    self.recipe_cards << RecipeCard.new(recipe_card_title, recipe)
  end

  def declare_allergen
  end

  def allergens
  end

  def top_three_recipes
  end

  def most_recent_recipe
  end


end

matt = User.new("Matt")
kayla = User.new("Kayla")
jeff = User.new("Jeff")
karen = User.new("Karen")
