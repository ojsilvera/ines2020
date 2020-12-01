class Category < ApplicationRecord
    has_many :categoryanswers
    has_many :questions
end
