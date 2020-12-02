class Category < ApplicationRecord
    has_many :category_answers
    has_many :questions
end
