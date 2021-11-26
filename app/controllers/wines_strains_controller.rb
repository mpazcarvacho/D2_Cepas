class WinesStrainsController < ApplicationController
  before_action :set_wines_strain, only: %i[ show edit update destroy ]
  before_action :validate_percentage, only: [:create]
  before_action :authenticate_user!

  # GET /wines_strains or /wines_strains.json
  def index
    @wines_strains = WinesStrain.all
  end

  # GET /wines_strains/1 or /wines_strains/1.json
  def show
  end

  # GET /wines_strains/new
  def new
    @wines_strain = WinesStrain.new
  end

  # GET /wines_strains/1/edit
  def edit
  end

  # POST /wines_strains or /wines_strains.json
  def create
    @wines_strain = WinesStrain.new(wines_strain_params)

    respond_to do |format|
      if @wines_strain.save
        format.html { redirect_to @wines_strain, notice: "Wines strain was successfully created." }
        format.json { render :show, status: :created, location: @wines_strain }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wines_strain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wines_strains/1 or /wines_strains/1.json
  def update
    respond_to do |format|
      if @wines_strain.update(wines_strain_params)
        format.html { redirect_to @wines_strain, notice: "Wines strain was successfully updated." }
        format.json { render :show, status: :ok, location: @wines_strain }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wines_strain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wines_strains/1 or /wines_strains/1.json
  def destroy
    @wines_strain.destroy
    respond_to do |format|
      format.html { redirect_to wines_strains_url, notice: "Wines strain was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wines_strain
      @wines_strain = WinesStrain.find(params[:id])
    end

    def validate_percentage
      puts 'yes'
    end

    # Only allow a list of trusted parameters through.
    def wines_strain_params
      params.require(:wines_strain).permit(:wine_id, :strain_id, :percentage)
    end
end

