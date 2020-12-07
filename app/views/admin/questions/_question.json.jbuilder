json.extract! question, :id, :detail, :category_id, :indicator_id, :created_at, :updated_at
json.url question_url(question, format: :json)
