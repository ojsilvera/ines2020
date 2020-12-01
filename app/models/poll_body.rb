class PollBody < ApplicationRecord
  belongs_to :question
  belongs_to :category_replay
  belongs_to :poll_header
end
