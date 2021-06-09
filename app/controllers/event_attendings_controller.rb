class EventAttendingsController < ApplicationController

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


end
