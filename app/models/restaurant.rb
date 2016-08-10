class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy

  validates :category, inclusion: { in: CATEGORIES, allow_nil: false }
  validates :name, :address, presence: true
end
