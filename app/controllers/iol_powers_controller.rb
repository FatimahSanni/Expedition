class IolPowersController < ApplicationController
  before_action :set_iol_power, only: [:show, :edit, :update, :destroy]

  # GET /iol_powers
  # GET /iol_powers.json
  def index
    @iol_powers = IolPower.all
  end

  # GET /iol_powers/1
  # GET /iol_powers/1.json
  def show
  end

  # GET /iol_powers/new
  def new
    @iol_power = IolPower.new
  end

  # GET /iol_powers/1/edit
  def edit
  end

  # POST /iol_powers
  # POST /iol_powers.json
  def create
    @iol_power = IolPower.new(iol_power_params)

    respond_to do |format|
      if @iol_power.save
        format.html { redirect_to iol_powers_url, notice: 'Iol power was successfully created.' }
        format.json { render :index, status: :created, location: @iol_power }
      else
        format.html { render :new }
        format.json { render json: @iol_power.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iol_powers/1
  # PATCH/PUT /iol_powers/1.json
  def update
    respond_to do |format|
      if @iol_power.update(iol_power_params)
        format.html { redirect_to iol_powers_url, notice: 'Iol power was successfully updated.' }
        format.json { render :index, status: :ok, location: @iol_power }
      else
        format.html { render :edit }
        format.json { render json: @iol_power.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iol_powers/1
  # DELETE /iol_powers/1.json
  def destroy
    @iol_power.destroy
    respond_to do |format|
      format.html { redirect_to iol_powers_url, notice: 'Iol power was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iol_power
      @iol_power = IolPower.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iol_power_params
      params.require(:iol_power).permit(:power)
    end
end
