class YumememosController < ApplicationController
  def index
  end



  private

  def meno_params
    params.require(:memo).permit(:image)
  end
end