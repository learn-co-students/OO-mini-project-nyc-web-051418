class Allergen
  attr_accessor :user, :ingredient
  @@all = []
  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
  end

  def self.all
    self.all
  end
end
