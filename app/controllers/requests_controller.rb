class RequestsController < ApplicationController
  def index
    @requests = Request.all
    @user = User.find(params[:user_id])
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
    @request = Request.new
    @user = User.find(params[:user_id])
  end

  def create
    @user = User.find(params[:user_id])
    @venue = Venue.find(params[:request][:venue_id])
    @user.requests.create!(request_params)
    flash[:notice] = "Request was created."
    redirect_to "/users/#{@user.id}/requests"
  end

  def edit
    @user = User.find(params[:user_id])

    @venue = Venue.find(params[:request][:venue_id])
    @request = Request.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @venue = Venue.find(params[:request][:venue_id])
    @request = Request.find(params[:id])
    @request.update(request_params)
    flash[:notice] = "Request was updated."
    redirect_to "/users/#{@user.id}/requests/#{@request.id}"
  end

  def destroy
    @user = User.find(params[:user_id])
    @venue = Venue.find(params[:venue_id])
    @request = Request.find(params[:id])
    @request.destroy
    flash[:notice] = "Request was deleted."
    redirect_to "/users/#{@user.id}/requests"
  end

  private
  def request_params
    params.require(:request).permit(:name, :genre, :soundcloud, :facebook, :number_votes, :venue_id)
  end
end
