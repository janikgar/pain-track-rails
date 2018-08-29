class PainLevelController < ApplicationController
  def index
    @painlevels = PainLevel.all
    render json: @painlevels.to_a
  end
end
