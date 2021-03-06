class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)
    flash[:notice] = "User was created."
    redirect_to "/users"
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    flash[:notice] = "User was updated."
    redirect_to "/users/#{@user.id}"
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User was delted."
    redirect_to "/users"
  end

  private
  def user_params
    params.require(:user).permit(:username, :name, :password_digest, :email) #maybe not password_digest
  end

end
