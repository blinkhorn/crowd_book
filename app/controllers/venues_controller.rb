class VenuesController < ApplicationController

  def show
    @venue = Venue.find(params[:id])
  end

  def create
    @venue = Venue.create!(venue_params)
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])
    @venue.update(venue_params)
    flash[:notice] = "Venue was updated."
    redirect_to "/venues/#{@venue.id}"
  end

  private
  def venue_params
    params.require(:venue).permit(:name)
  end
end
