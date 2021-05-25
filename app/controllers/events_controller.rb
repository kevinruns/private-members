class EventsController < ApplicationController
  def new
  end

  def create
  end

  def show
  end

  def index

    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
    
  end
end
