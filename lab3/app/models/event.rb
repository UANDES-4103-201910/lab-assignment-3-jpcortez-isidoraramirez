class Event < ApplicationRecord
	has_many :venues, dependent: :destroy
	belongs_to :ticket
end
