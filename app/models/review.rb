class Review < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant_id, presence: true
  validates :content, presence: true
  validates :rating, presence: true
  validates_numericality_of :rating, :on => :create
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }

# A review must have a parent restaurant.
# A review must have content and a rating. The rating should be a number between 0 and 5.
end
