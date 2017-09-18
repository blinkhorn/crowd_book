class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.create!(request_params)
    redirect_to "/requests"
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    @request.update(request_params)
    redirect_to "/requests/#{@request.id}"
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to "/requests"
  end

  private
  def request_params
    params.require(:request).permit(:name, :genre, :soundcloud, :facebook, :number_votes)
  end
end
