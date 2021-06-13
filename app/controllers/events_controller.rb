class EventsController < ApplicationController

  before_action :set_event, only: [:show, :edit, :destroy]

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
    @event = Event.find(params[:id])
  end

  def index
    @events = Event.all
  end

  def edit
  end

  def update
    set_event.update(event_params)
    if set_event.save
      redirect_to event_path, notice: "event updated"
    else
      render :edit_event
    end
  end


  def destroy
    set_event.destroy
    redirect_to Current.user, alert: 'Event deleted.'
  end

  private

  def event_params
    params.require(:event).permit(:name, :location, :event_on, :event_creator_id)
  end

  def set_event
    @event = Event.find(params[:id])
  end

end
