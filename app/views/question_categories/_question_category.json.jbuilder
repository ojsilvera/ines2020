json.extract! question_category, :id, :question_id, :category_id, :created_at, :updated_at
json.url question_category_url(question_category, format: :json)
