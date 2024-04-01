json.extract! event, :id, :title, :description, :location, :hosting, :address, :city, :state, :zipcode, :organization_id, :start_time, :end_time, :created_at, :updated_at
json.url event_url(event, format: :json)
