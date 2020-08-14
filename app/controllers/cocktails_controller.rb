class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path(@cocktail)
    else
      render :new
    end
    # for every cocktail we create one does and one ingredient and attach ingredient and dose.
    # store ingredient id and ingredient dose

    # ingredient = Ingredient.find(params[:cocktail][:ingredient_ids][1].to_i)
    # @dose.cocktail = @cocktail
    # @dose.ingredient = ingredient
    # @dose.description = '9 cl'
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

  def dose_params
    params.require(:does).permit(:description)
  end
end
