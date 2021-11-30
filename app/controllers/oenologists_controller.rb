class OenologistsController < ApplicationController
  before_action :set_oenologist, only: %i[ show edit update destroy ]
  before_action :authorize_editor!
  skip_before_action :verify_authenticity_token

  # GET /oenologists or /oenologists.json
  def index
    @oenologists = Oenologist.all
  end

  # GET /oenologists/1 or /oenologists/1.json
  def show
  end

  # GET /oenologists/new
  def new
    @oenologist = Oenologist.new
  end

  # GET /oenologists/1/edit
  def edit
  end
  
  # POST /oenologists or /oenologists.json
  def create
    # if(params[:commit] == "Create Magazine")
    #   redirect_to "magazines#create" and return
    # end

    @oenologist = Oenologist.new(oenologist_params)
    
    # only saves it if is not a new magazine
    # @oenologist.published_at = Time.zone.now if !magazine?
    
    respond_to do |format|
      if @oenologist.save
        format.html { redirect_to oenologists_path, notice: "Oenologist was successfully created." }
        format.json { render :show, status: :created, location: @oenologist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @oenologist.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # PATCH/PUT /oenologists/1 or /oenologists/1.json
  def update
    # @oenologist.published_at = Time.zone.now if !magazine?

    respond_to do |format|
      if @oenologist.update(oenologist_params)
        format.html { redirect_to oenologists_path, notice: "Oenologist was successfully updated." }
        format.json { render :show, status: :ok, location: @oenologist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @oenologist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oenologists/1 or /oenologists/1.json
  def destroy
    @oenologist.destroy
    respond_to do |format|
      format.html { redirect_to oenologists_url, notice: "Oenologist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oenologist
      @oenologist = Oenologist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def oenologist_params
      params.require(:oenologist).permit(:Name, :Age, :Country, positions_attributes: [:id, :oenologist_id, :magazine_id, :job_id], magazines_attributes: [:id, :Name])
    end

    # method to check if submit button was of create new magazine
    def magazine?
      params[:commit] == "Create Magazine"

    end
end
