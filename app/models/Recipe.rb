require 'pry'

class Recipe

    attr_accessor :recipe_name, :ingredients, :recipe_card

    ALL = []

    def initialize(recipe_name:,ingredients:, recipe_card_title:)
      @recipe_name = recipe_name
      @ingredients = ingredients
      @recipe_card_title = recipe_card_title
      ALL << self
    end

    def self.all
        ALL
    end

    def self.most_popular
        most_users = []

      #  binding.pry
        #
        # RecipeCard.all.each do |individual_card|
        #   binding.pry

        # end

    end

    def users
    end

    def ingredients
        @ingredients
    end

    def allergens
    end

    def add_ingredients
    end

end
