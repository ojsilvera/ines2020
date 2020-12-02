class PollHeader < ApplicationRecord
  belongs_to :gender
  belongs_to :institution
  has_many :poll_bodies
  has_many :group_fields
end
