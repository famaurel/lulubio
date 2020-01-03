class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :presentation, :produits, :ateliers, :contact, :construction, :mentions]

  def home
  end
end
