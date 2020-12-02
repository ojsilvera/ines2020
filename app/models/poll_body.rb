class PollBody < ApplicationRecord
  belongs_to :poll_header
  belongs_to :question
  belongs_to :category_replay
end
