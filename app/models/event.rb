class Event < ApplicationRecord

  has_many :event_attendings, foreign_key: :attended_event_id
  has_many :attendees, through: :event_attendings

  belongs_to :event_creator, class_name: "User"

end
