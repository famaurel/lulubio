class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :presentation, :produits, :ateliers, :contact, :construction]

  def home
  end
end
