class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true, allow_blank: false
  validates :rating, inclusion: { in: (0..5) }, presence: true, allow_blank: false, numericality: { only_integer: true }
end
