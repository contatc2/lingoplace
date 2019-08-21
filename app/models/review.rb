class Review < ApplicationRecord
  belongs_to :job

  validates :description, length: { minimum: 20 }
  validates :stars, presence: true
end
