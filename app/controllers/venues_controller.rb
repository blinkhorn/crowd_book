class VenuesController < ApplicationController

  # def show
  #   @venue = Venue.find(params[:id])
  # end
  #
  # def new
  #   @venue = Venue.new
  # end
  #
  # def create
  #   @venue = Venue.create!(user_params)
  #   redirect_to "/users"
  # end
  #
  # def edit
  #   @user = User.find(params[:id])
  # end
  #
  # def update
  #   @user = Venue.find(params[:id])
  #   @user.update(user_params)
  #   redirect_to "/users/#{@user.id}"
  # end
  #
  # def destroy
  #   @user = User.find(params[:id])
  #   @user.destroy
  #   redirect_to "/users"
  # end
  #
  # private
  # def user_params
  #   params.require(:user).permit(:username, :name, :password_digest, :email) #maybe not password_digest
  # end
end
