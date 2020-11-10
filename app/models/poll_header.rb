class PollHeader < ApplicationRecord
  belongs_to :institution
  belongs_to :gender
  belongs_to :group_field
end
