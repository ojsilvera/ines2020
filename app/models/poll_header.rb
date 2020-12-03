class PollHeader < ApplicationRecord
  self.primary_key = :code

  belongs_to :gender
  belongs_to :institution
  has_many :poll_bodies
  has_many :group_fields
end
