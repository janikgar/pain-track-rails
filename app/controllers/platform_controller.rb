class PlatformController < ApplicationController
  def index
<<<<<<< HEAD
    @pain_levels = PainLevel.all
    respond_to do |format|
      format.html
      format.json { render json: @pain_levels }
    end
=======
>>>>>>> 38a2ee0ea3ab0a69cc3adec52b20191cfb0f9335
  end
end
