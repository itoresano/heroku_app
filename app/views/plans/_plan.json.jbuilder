json.extract! plan, :id, :name, :budget, :start_date, :description, :created_at, :updated_at
json.url plan_url(plan, format: :json)