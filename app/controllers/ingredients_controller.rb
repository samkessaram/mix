class IngredientsController < ApplicationController
  def create
    @ingredient = Ingredient.new
  end
end
