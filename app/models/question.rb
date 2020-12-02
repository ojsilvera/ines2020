class Question < ApplicationRecord
  belongs_to :category
  belongs_to :indicator
  has_many :poll_bodies
end
