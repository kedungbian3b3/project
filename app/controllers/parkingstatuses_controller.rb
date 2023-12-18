class ParkingstatusesController < ApplicationController
  before_action :set_parkingstatus, only: %i[ show edit update destroy ]

  # GET /parkingstatuses or /parkingstatuses.json
  def index
    @parkingstatuses = Parkingstatus.all
  end

  # GET /parkingstatuses/1 or /parkingstatuses/1.json
  def show
  end

  # GET /parkingstatuses/new
  def new
    @parkingstatus = Parkingstatus.new
  end

  # GET /parkingstatuses/1/edit
  def edit
  end

  # POST /parkingstatuses or /parkingstatuses.json
  def create
    @parkingstatus = Parkingstatus.new(parkingstatus_params)

    respond_to do |format|
      if @parkingstatus.save
        format.html { redirect_to parkingstatus_url(@parkingstatus), notice: "Parkingstatus was successfully created." }
        format.json { render :show, status: :created, location: @parkingstatus }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @parkingstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parkingstatuses/1 or /parkingstatuses/1.json
  def update
    respond_to do |format|
      if @parkingstatus.update(parkingstatus_params)
        format.html { redirect_to parkingstatus_url(@parkingstatus), notice: "Parkingstatus was successfully updated." }
        format.json { render :show, status: :ok, location: @parkingstatus }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @parkingstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parkingstatuses/1 or /parkingstatuses/1.json
  def destroy
    @parkingstatus.destroy

    respond_to do |format|
      format.html { redirect_to parkingstatuses_url, notice: "Parkingstatus was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parkingstatus
      @parkingstatus = Parkingstatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parkingstatus_params
      params.require(:parkingstatus).permit(:staff_id, :available, :slotid, :parkingfee_id, :paymentmethod_id, :customer_id, :car, :numberplate, :date)
    end
end
