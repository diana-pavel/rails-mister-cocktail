class DosesController < ApplicationController
  before_action :set_cocktail, except: :destroy
  before_action :set_dose, only: [:destroy, :show]

  def new

    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    #@dose.ingredient = Ingredient.find(params[:dose][:ingredient])
    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  def delete
  end

private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
  def set_dose
    @dose = Dose.find(params[:id])
  end
end
