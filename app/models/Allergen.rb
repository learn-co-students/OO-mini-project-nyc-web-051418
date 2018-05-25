class Allergen
  @@all = []
    attr_accessor :ingredient, :user
    def initialize(ingredient, user)
      @ingredient = ingredient
      @user = user
      @@all << self
    end

    def self.all
      @@all
    end

    def self.select_ingredients
      Allergen.all.map { |i| i.ingredient}
    end
end
