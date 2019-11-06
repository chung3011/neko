json.extract! food, :id, :name, :category, :description, :price, :supportable, :average_point, :created_at, :updated_at
json.url food_url(food, format: :json)
