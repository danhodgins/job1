json.extract! job, :id, :title, :description, :state_id, :city_id, :created_at, :updated_at
json.url job_url(job, format: :json)