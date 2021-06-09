class AddAttendeeToEventAttendings < ActiveRecord::Migration[6.1]
  def change
    add_reference :event_attendings, :attendee, references: :users, index: true
    add_foreign_key :event_attendings, :users, column: :attendee_id
  end
end
