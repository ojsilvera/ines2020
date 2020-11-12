class PollBody < ApplicationRecord
  belongs_to :poll_header
  belongs_to :question_category
end
