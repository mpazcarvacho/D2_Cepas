class PagesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    # Strains will be ordered by strain name
    @wines = Wine.includes(:wines_strains, :strains).all.order(:name)
  end

end