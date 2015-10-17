class IolInsertionsController < ApplicationController
  before_action :set_iol_insertion, only: [:show, :edit, :update, :destroy]

  # GET /iol_insertions
  # GET /iol_insertions.json
  def index
    @iol_insertions = IolInsertion.all
  end

  # GET /iol_insertions/1
  # GET /iol_insertions/1.json
  def show
  end

  # GET /iol_insertions/new
  def new
    @iol_insertion = IolInsertion.new
  end

  # GET /iol_insertions/1/edit
  def edit
  end

  # POST /iol_insertions
  # POST /iol_insertions.json
  def create
    @iol_insertion = IolInsertion.new(iol_insertion_params)

    respond_to do |format|
      if @iol_insertion.save
        format.html { redirect_to iol_insertions_url, notice: 'Iol insertion was successfully created.' }
        format.json { render :index, status: :created, location: @iol_insertion }
      else
        format.html { render :new }
        format.json { render json: @iol_insertion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iol_insertions/1
  # PATCH/PUT /iol_insertions/1.json
  def update
    respond_to do |format|
      if @iol_insertion.update(iol_insertion_params)
        format.html { redirect_to iol_insertions_url, notice: 'Iol insertion was successfully updated.' }
        format.json { render :index, status: :ok, location: @iol_insertion }
      else
        format.html { render :edit }
        format.json { render json: @iol_insertion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iol_insertions/1
  # DELETE /iol_insertions/1.json
  def destroy
    @iol_insertion.destroy
    respond_to do |format|
      format.html { redirect_to iol_insertions_url, notice: 'Iol insertion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iol_insertion
      @iol_insertion = IolInsertion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iol_insertion_params
      params.require(:iol_insertion).permit(:name)
    end
end
