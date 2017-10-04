class RequestsController < ApplicationController
  # Since you're setting the user here repeatedly in many of these controller method, you can use before_action to
  # DRY up your code a little bit. before_action takes a method_name as a :symbol for an argument
  # then that mehtod runs before any controller action. You can also have this method run only or except for certain
  # controller methods. Documentation link below.

  # Check out section 8 Filter on http://guides.rubyonrails.org/action_controller_overview.html

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
