json.extract! t_order, :id, :price, :created_at, :updated_at
json.url t_order_url(t_order, format: :json)
