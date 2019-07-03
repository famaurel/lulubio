class AteliersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @ateliers = Atelier.order('date ASC')
  end

  def new
    @atelier = Atelier.new
  end

  def edit
    set_atelier
  end

  def create
    @atelier = Atelier.create(atelier_params)
    redirect_to ateliers_path
  end

  def update
    set_atelier
    @atelier.update(atelier_params)

    redirect_to ateliers_path
  end

  def destroy
    set_atelier
    @atelier.destroy

    redirect_to ateliers_path
  end

  private

  def set_atelier
    @atelier = Atelier.find(params[:id])
  end

  def atelier_params
    params[:atelier].permit(:name, :date, :description)
  end
end
