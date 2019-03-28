class Venue < ApplicationRecord
	belongs_to :event
	def last_atrendance
		user.orders.tickets.find(:category).where
	end
end
