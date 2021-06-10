class EventAttendingsController < ApplicationController

  before_action :require_login

  def attend
    @event = Event.find(params[:event_id])
    @event_attending = EventAttending.new(attended_event_id: params[:event_id], attendee_id: Current.user.id)

    if @event_attending.save
      flash[:notice] = "Registered for event!"
      redirect_to event_path( @event )
    else
      flash[:alert] = 'Already registered'
      redirect_to event_path( @event)
    end
  end

  def withdraw

    @event = Event.find(params[:event_id])
    @event_attending = EventAttending.find_by(attended_event_id: params[:event_id], attendee_id: Current.user.id)
    @event_attending.destroy
    flash[:alert] = "Unregistered for event."
    redirect_to event_path( @event)

  end


end
