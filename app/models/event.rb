class Event < ApplicationRecord

  has_many :event_attendings, foreign_key: :attended_event_id,  dependent: :destroy
  has_many :attendees, through: :event_attendings

  belongs_to :event_creator, class_name: "User"

  scope :past, -> { where('event_on < ?', Date.today) }
  scope :future, -> { where('event_on >= ?', Date.today) }

end
