class PagesController < ApplicationController
  before_action :authenticate_user!
  before_action :run_seed
  
  def index
    # Strains will be ordered by strain name
    @wines = Wine.includes(:wines_strains, :strains).all.order(:name)
  end

end