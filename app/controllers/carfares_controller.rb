class CarfaresController < ApplicationController
  before_action :set_carfare, only: %i[ show edit update destroy ]

  # GET /carfares or /carfares.json
  def index
    @carfares = Carfare.all
  end

  # GET /carfares/1 or /carfares/1.json
  def show
  end

  # GET /carfares/new
  def new
    @carfare = Carfare.new
  end

  # GET /carfares/1/edit
  def edit
  end

  # POST /carfares or /carfares.json
  def create
    @carfare = Carfare.new(carfare_params)

    respond_to do |format|
      if @carfare.save
        format.html { redirect_to @carfare, notice: "Carfare was successfully created." }
        format.json { render :show, status: :created, location: @carfare }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @carfare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carfares/1 or /carfares/1.json
  def update
    respond_to do |format|
      if @carfare.update(carfare_params)
        format.html { redirect_to @carfare, notice: "Carfare was successfully updated." }
        format.json { render :show, status: :ok, location: @carfare }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @carfare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carfares/1 or /carfares/1.json
  def destroy
    @carfare.destroy
    respond_to do |format|
      format.html { redirect_to carfares_url, notice: "Carfare was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carfare
      @carfare = Carfare.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def carfare_params
      params.require(:carfare).permit(:worked_on)
    end
end
