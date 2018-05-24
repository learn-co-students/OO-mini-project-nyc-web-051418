require 'pry'

class Recipe

    attr_accessor :recipe_name, :ingredients, :recipe_card, :recipe_card_title

    ALL = []

    def initialize(recipe_name, recipe_card_title)
      @recipe_name = recipe_name
      @ingredients = []
      @recipe_card_title = recipe_card_title
      ALL << self
    end

    def self.all
        ALL
    end

    def ingredients
        @ingredients.flatten
    end

    def add_ingredients(*ingredient)
      @ingredients << ingredient
      @ingredients.flatten
    end



    def users
    end

    def allergens
    end

    def self.most_popular
    end

end
