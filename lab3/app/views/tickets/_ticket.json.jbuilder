json.extract! ticket, :id, :event_id, :price, :category, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
