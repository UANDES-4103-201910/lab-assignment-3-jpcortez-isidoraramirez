json.extract! ev_venue, :id, :name, :address, :capacity, :created_at, :updated_at
json.url ev_venue_url(ev_venue, format: :json)
