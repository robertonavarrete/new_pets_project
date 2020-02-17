class DewormingsController < ApplicationController
  before_action :set_deworming, only: [:show, :edit, :update, :destroy]

  # GET /dewormings
  # GET /dewormings.json
  def index
    @dewormings = Deworming.all
  end

  # GET /dewormings/1
  # GET /dewormings/1.json
  def show
  end

  # GET /dewormings/new
  def new
    @deworming = Deworming.new
  end

  # GET /dewormings/1/edit
  def edit
  end

  # POST /dewormings
  # POST /dewormings.json
  def create
    @deworming = Deworming.new(deworming_params)

    respond_to do |format|
      if @deworming.save
        format.html { redirect_to @deworming, notice: 'Deworming was successfully created.' }
        format.json { render :show, status: :created, location: @deworming }
      else
        format.html { render :new }
        format.json { render json: @deworming.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dewormings/1
  # PATCH/PUT /dewormings/1.json
  def update
    respond_to do |format|
      if @deworming.update(deworming_params)
        format.html { redirect_to @deworming, notice: 'Deworming was successfully updated.' }
        format.json { render :show, status: :ok, location: @deworming }
      else
        format.html { render :edit }
        format.json { render json: @deworming.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dewormings/1
  # DELETE /dewormings/1.json
  def destroy
    @deworming.destroy
    respond_to do |format|
      format.html { redirect_to dewormings_url, notice: 'Deworming was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deworming
      @deworming = Deworming.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def deworming_params
      params.require(:deworming).permit(:pet_id, :deworming_date, :place)
    end
end
