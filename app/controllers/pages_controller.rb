class PagesController < ApplicationController

  def index
    # Strains will be ordered by strain name
    @wines = Wine.includes(:wines_strains, :strains).all.order(:name)
  end

end