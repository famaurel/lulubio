class PaniersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @paniers = Panier.all
  end

  def new
    @panier = Panier.new
  end

  def edit
    set_panier
  end

  def create
    @panier = Panier.create(panier_params)
    redirect_to paniers_path
  end

  def update
    set_panier
    @panier.update(panier_params)

    redirect_to paniers_path
  end

  def destroy
    set_panier
    @panier.destroy

    redirect_to paniers_path
  end

  private

  def set_panier
    @panier = Panier.find(params[:id])
  end

  def panier_params
    params[:panier].permit(:title, :ingredients)
  end
end
