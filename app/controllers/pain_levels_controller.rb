class PainLevelsController < ApplicationController
  before_action :set_pain_level, only: [:show, :edit, :update, :destroy]

  # GET /pain_levels
  # GET /pain_levels.json
  def index
    @pain_levels = PainLevel.all
    respond_to do |format|
      format.html
      format.json { render json: @pain_levels }
    end
  end

  # GET /pain_levels/1
  # GET /pain_levels/1.json
  def show
  end

  # GET /pain_levels/new
  def new
    @pain_level = PainLevel.new
  end

  # GET /pain_levels/1/edit
  def edit
  end

  # POST /pain_levels
  # POST /pain_levels.json
  def create
    @pain_level = PainLevel.new(pain_level_params)

    respond_to do |format|
      if @pain_level.save
        format.html { redirect_to @pain_level, notice: 'Pain level was successfully created.' }
        format.json { render :show, status: :created, location: @pain_level }
      else
        format.html { render :new }
        format.json { render json: @pain_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pain_levels/1
  # PATCH/PUT /pain_levels/1.json
  def update
    respond_to do |format|
      if @pain_level.update(pain_level_params)
        format.html { redirect_to @pain_level, notice: 'Pain level was successfully updated.' }
        format.json { render :show, status: :ok, location: @pain_level }
      else
        format.html { render :edit }
        format.json { render json: @pain_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pain_levels/1
  # DELETE /pain_levels/1.json
  def destroy
    @pain_level.destroy
    respond_to do |format|
      format.html { redirect_to pain_levels_url, notice: 'Pain level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pain_level
      @pain_level = PainLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pain_level_params
      params.require(:pain_level).permit(:pain_level)
    end
end
