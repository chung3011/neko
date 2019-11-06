json.extract! cat, :id, :name, :category, :description, :price, :available, :average_point, :created_at, :updated_at
json.url cat_url(cat, format: :json)
