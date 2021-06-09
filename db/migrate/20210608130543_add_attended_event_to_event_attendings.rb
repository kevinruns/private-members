class AddAttendedEventToEventAttendings < ActiveRecord::Migration[6.1]
  def change

    add_reference :event_attendings, :attended_event, references: :events, index: true
    add_foreign_key :event_attendings, :events, column: :attended_event_id

  end
end
