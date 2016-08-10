class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, numericality: { only_integer: true }, inclusion: { in: [0,1,2,3,4,5], allow_nil: false }
  # numericality hyper important pour eviter qu un mauvais input soit transforme en 0
  validates :content, :rating, presence: true
end
