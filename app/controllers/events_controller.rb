class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path, notice: "new event created"
    else
      render :new
    end
  end

  def show
  end

  def index
  end

  def event_params
    params.require(:event).permit(:location, :event_on, :event_creator_id)
  end


end
