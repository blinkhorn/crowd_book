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
    @request = Request.create!(request_params)
    flash[:notice] = "Request was created."
    redirect_to "/requests"
  end

  def edit
    @request = Request.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def update
    @request = Request.find(params[:id])
    @request.update(request_params)
    flash[:notice] = "Request was updated."
    redirect_to "/requests/#{@request.id}"
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    flash[:notice] = "Request was deleted."
    redirect_to "/requests"
  end

  private
  def request_params
    params.require(:request).permit(:name, :genre, :soundcloud, :facebook, :number_votes)
  end
end
