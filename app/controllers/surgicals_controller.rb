class SurgicalsController < ApplicationController
  before_action :set_surgical, only: [:show, :edit, :update, :destroy]

  # GET /surgicals
  # GET /surgicals.json
  def index
    @search = Surgical.search(params[:q])
    @surgicals = @search.result
    @search.build_condition

    respond_to do |format|
      format.html
      format.json
      format.csv { send_data @surgicals.to_csv, filename: "surgicals-#{Date.today}.csv" }
    end
  end

  # GET /surgicals/1
  # GET /surgicals/1.json
  def show
  end

  # GET /surgicals/new
  def new
    @surgical = Surgical.new
  end

  # GET /surgicals/1/edit
  def edit
  end

  # POST /surgicals
  # POST /surgicals.json
  def create
    @surgical = Surgical.new(surgical_params)

    respond_to do |format|
      if @surgical.save
        format.html { redirect_to @surgical, notice: 'Surgical was successfully created.' }
        format.json { render :show, status: :created, location: @surgical }
      else
        format.html { render :new }
        format.json { render json: @surgical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surgicals/1
  # PATCH/PUT /surgicals/1.json
  def update
    respond_to do |format|
      if @surgical.update(surgical_params)
        format.html { redirect_to @surgical, notice: 'Surgical was successfully updated.' }
        format.json { render :show, status: :ok, location: @surgical }
      else
        format.html { render :edit }
        format.json { render json: @surgical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surgicals/1
  # DELETE /surgicals/1.json
  def destroy
    @surgical.destroy
    respond_to do |format|
      format.html { redirect_to surgicals_url, notice: 'Surgical was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surgical
      @surgical = Surgical.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surgical_params
      params.require(:surgical).permit(:post_rva, :post_lva, :patient_id, :surgeon, :surgery_date, :surgery, :eye, :average_k, :axial_length, :iol_power, :iol_insertion, :complication)
    end
end
