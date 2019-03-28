class Ticket < ApplicationRecord
	has_many :events, dependent: :destroy
	belongs_to :order
	def most_expensive_ticket_bought
		return self.orders.tickets.find(:price).order(price: :desc:).limit(1)
	end
	
	def most_expensive_between(date_i, date_f)
		return self.tickets.events.find(:start_date).where(:start_date < date_f and :start_date > date_i)
	end
	def last_event
		return self.event.select("events.name").order("ticket_orders.date desc").first
	end

end
