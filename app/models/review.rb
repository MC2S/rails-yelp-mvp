class Review < ApplicationRecord
  belongs_to :restaurant

  RATINGS = [0, 1, 2, 3, 4, 5]
  validates :category, inclusion: { in: RATINGS, allow_nil: false, numericality: true }

end
