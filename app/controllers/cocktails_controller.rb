class CocktailsController < ApplicationController
  def new
    @cocktail = Cocktail.new
    @ingredient = Ingredient.new
    @step = Step.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @cocktail = @restaurant.cocktails.create(cocktail_params)

    redirect_to restaurant_path(@restaurant)
  end

  private

    def cocktail_params
      params.require(:cocktail).permit(:name, ingredients_attributes: [:id, :name, :_destroy], steps_attributes: [:id, :instruction, :_destroy])
    end

end
