# app/controllers/sessions_controller.rb

class SessionsController < ApplicationController
  def index
    @name = session[:name]
  end
end
