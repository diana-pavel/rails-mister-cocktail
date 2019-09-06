class CocktailsController < ApplicationController
before_action :set_cocktail, only: [:new, :show, :create]
  def index
    @cocktails = Cocktail.all
  end

  def new
  end

  def show
 @doses = @cocktail.doses
  end

  def create
  end

private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
