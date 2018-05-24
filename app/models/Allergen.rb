
class Allergen

  attr_accessor :ingredient,:user
  ALL=[]

  def initialize(ingredient,user)
    @ingredient = ingredient
    @user = user
    ALL << self
  end

  def self.all
    ALL
  end

end
