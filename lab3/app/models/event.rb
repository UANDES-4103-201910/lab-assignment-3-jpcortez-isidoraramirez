class Event < ApplicationRecord
  belongs_to :ev_venue
  has_many :tickets
end
