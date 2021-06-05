class User < ApplicationRecord

  has_secure_password

  has_many :event_attendings, foreign_key: :attendee_id
  has_many :attended_events, through: :event_attendings

  has_many :created_events, foreign_key: "event_creator_id", class_name: "Event"

end
