class ApplicationController < ActionController::Base
 	before_action :authenticate_user!, only: [:new, :create]
def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    Place.create(place_params)
    redirect_to root_path
  end

  def end
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end
end

