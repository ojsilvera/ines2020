class PollHeader < ApplicationRecord
  belongs_to :institution
  belongs_to :gender
  has_many :group_fields
  has_many :poll_bodies
end
