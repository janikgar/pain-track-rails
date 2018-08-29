class PainLevelController < ApplicationController
  def index
    @painlevels = PainLevel.all
    render json: @painlevels
  end
end
