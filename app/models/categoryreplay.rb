class Categoryreplay < ApplicationRecord
  belongs_to :replay
  belongs_to :category
  has_many :poll_bodies
end
