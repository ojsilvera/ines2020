json.extract! poll_header, :id, :age, :date, :gender_id, :institution_id, :created_at, :updated_at
json.url poll_header_url(poll_header, format: :json)
