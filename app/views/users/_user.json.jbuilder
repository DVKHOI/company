json.extract! user, :id, :name, :age, :address, :telephone, :role, :image_url, :created_at, :updated_at
json.url user_url(user, format: :json)
