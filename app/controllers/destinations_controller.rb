class DestinationsController < ApplicationController

  def index
    @destinations = Destination.all
  end

  def new
    @destination = Destination.new
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def create
    @destination = Destination.create(destination_params)
  end



  private

  def destination_params
    params.require(:destination).permit(:name, :country)
  end

end
