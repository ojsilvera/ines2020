class Indicator < ApplicationRecord
  belongs_to :factor
  has_one :question

end
