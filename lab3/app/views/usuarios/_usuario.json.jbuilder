json.extract! usuario, :id, :name, :apellido, :mail, :phone, :password, :address, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
