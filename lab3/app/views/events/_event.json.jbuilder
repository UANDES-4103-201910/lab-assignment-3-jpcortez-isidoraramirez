json.extract! event, :id, :name, :description, :f_inicio, :ev_venue_id, :created_at, :updated_at
json.url event_url(event, format: :json)
