class EventAttending < ApplicationRecord

  validates_uniqueness_of   :attendee_id, scope: :attended_event_id

  enum status: [ :invited, :accepted ]

  belongs_to :attendee, class_name: "User"
  belongs_to :attended_event, class_name: "Event"

end
