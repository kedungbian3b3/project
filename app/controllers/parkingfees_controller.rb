class ParkingfeesController < ApplicationController
  before_action :set_parkingfee, only: %i[ show edit update destroy ]

  # GET /parkingfees or /parkingfees.json
  def index
    @parkingfees = Parkingfee.all
  end

  # GET /parkingfees/1 or /parkingfees/1.json
  def show
  end

  # GET /parkingfees/new
  def new
    @parkingfee = Parkingfee.new
  end

  # GET /parkingfees/1/edit
  def edit
  end

  # POST /parkingfees or /parkingfees.json
  def create
    @parkingfee = Parkingfee.new(parkingfee_params)

    respond_to do |format|
      if @parkingfee.save
        format.html { redirect_to parkingfee_url(@parkingfee), notice: "Parkingfee was successfully created." }
        format.json { render :show, status: :created, location: @parkingfee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @parkingfee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parkingfees/1 or /parkingfees/1.json
  def update
    respond_to do |format|
      if @parkingfee.update(parkingfee_params)
        format.html { redirect_to parkingfee_url(@parkingfee), notice: "Parkingfee was successfully updated." }
        format.json { render :show, status: :ok, location: @parkingfee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @parkingfee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parkingfees/1 or /parkingfees/1.json
  def destroy
    @parkingfee.destroy

    respond_to do |format|
      format.html { redirect_to parkingfees_url, notice: "Parkingfee was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parkingfee
      @parkingfee = Parkingfee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parkingfee_params
      params.require(:parkingfee).permit(:numtime, :money)
    end
end
