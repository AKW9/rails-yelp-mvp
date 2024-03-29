class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"],
  message: "%{value} is not a valid category" }
  # CATEGORIES = %w["chinese", "italian", "japanese", "french", "belgian"]
end
