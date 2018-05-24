require_relative 'RecipeCard'

class User
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def get_recipe_cards
    RecipeCard.all.select do |card|
      card.user == self
    end
  end

  def allergens
    user_allergens = Allergen.all.select do |info|
      info.user.name == self.name
    end
    allergy = user_allergens.map do |allerg|
      allerg
    end
    return allergy
  end

  def recipes
    cards = get_recipe_cards
    cards.map do |info|
      info.recipe
    end
  end

  def top_three_recipes
    cards = get_recipe_cards

    rates = cards.sort_by do |info|
      info.rating
    end
    rates.reverse!
    rates = rates[0..2]
  end

  def most_recent_recipe
    cards = get_recipe_cards
    cards.last.recipe
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end

  def self.all
    @@all
  end
end
