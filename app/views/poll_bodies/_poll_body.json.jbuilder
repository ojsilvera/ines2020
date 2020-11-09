json.extract! poll_body, :id, :created_at, :updated_at
json.url poll_body_url(poll_body, format: :json)
