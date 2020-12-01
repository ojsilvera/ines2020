class PollBody < ApplicationRecord
  belongs_to :question
  belongs_to :categoryreplay
  belongs_to :poll_header
end
