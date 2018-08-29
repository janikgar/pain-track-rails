class PlatformController < ApplicationController
  def index
    @pain_levels = PainLevel.all
    respond_to do |format|
      format.html
      format.json { render json: @pain_levels }
    end
  end
end
