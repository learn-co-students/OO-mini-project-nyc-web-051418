
require_relative 'RecipeCard.rb'
class User
  attr_accessor :name
  attr_reader :id

  @@all = []

  def initialize(name)
    @name = name
    @id = nil
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    card_list = RecipeCard.all.select do |recipe_card|
      recipe_card.recipe_user_id == self
    end
    card_list.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, self, rating, date)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)

  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def top_three_recipes
    recipe_cards = RecipeCard.all.select do |recipe_card|
      recipe_card.recipe_user_id == self
    end
    top_3 = recipe_cards.sort {|recipe_card, next_card| recipe_card.rating <=> next_card.rating}
    top_3.reverse!
    top_3 = top_3[0..2]
    binding.pry
  end

  def most_recent_recipe

  end
end
