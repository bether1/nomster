class PlacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    current_user.places.create(place_params)
    redirect_to root_path
  end

  def show
    @place = Place.find(params[:id])
  end

  def edit
    @place = Place.find(params[:id])
  end


  private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end

end

# each of the above definitions are tied to a file in the places menu
# the files in the places folder are all html files for URLs
