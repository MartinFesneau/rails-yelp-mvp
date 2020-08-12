class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: Restaurant::CATEGORY }, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  has_many :reviews, dependent: :destroy
end
