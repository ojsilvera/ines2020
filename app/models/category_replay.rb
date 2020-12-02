class CategoryReplay < ApplicationRecord
  belongs_to :replay
  belongs_to :category
end
