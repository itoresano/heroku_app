json.extract! category, :id, :name, :description, :budget, :integer, :created_at, :updated_at
json.url category_url(category, format: :json)