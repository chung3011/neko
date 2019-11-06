json.extract! user, :id, :name, :email, :hashed_password, :salt, :date_of_birth, :created_at, :updated_at
json.url user_url(user, format: :json)
