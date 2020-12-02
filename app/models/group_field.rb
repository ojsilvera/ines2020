class GroupField < ApplicationRecord
  belongs_to :group
  belongs_to :field
  belongs_to :poll_header
end
