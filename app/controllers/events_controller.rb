class EventsController < ApplicationController
  def new
  end

  def create
  end

  def show
  end

  def index

    flash[:notice] = "Logged in successfully"
    flash[:alert] = "Incorrect username"

    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
  end
end
