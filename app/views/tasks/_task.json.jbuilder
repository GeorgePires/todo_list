json.extract! task, :id, :description, :resolved, :created_at, :updated_at
json.url task_url(task, format: :json)
