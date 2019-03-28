class Ticket < ApplicationRecord
	has_many :events, dependent: :destroy
	belongs_to :order
	def most_ecpensive_ticket_bought
		return self.orders.tickets.find(:price).order(price: :desc:).limit(1)
	end
end
