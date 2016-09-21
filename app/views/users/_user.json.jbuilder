json.extract! user, :id, :name, :email, :date_birth, :budget, :created_at, :updated_at
json.url user_url(user, format: :json)