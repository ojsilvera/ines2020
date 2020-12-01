json.extract! poll_body, :id, :question_id, :category_replay_id, :poll_header_id, :created_at, :updated_at
json.url poll_body_url(poll_body, format: :json)
