class DosesController < ApplicationController
  def new
    @dose = Dose.new
    # This has to be definied because we need to know about the cocktail and empty dose. This cocktail is then utilised in the form.
    @cocktail = Cocktail.find(params[:cocktail_id])

  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    # Dose needs to know about cocktail...
    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end


end
