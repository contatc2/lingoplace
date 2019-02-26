class Review < ApplicationRecord
  belongs_to :job

  validates :description, presence: true
  validates :stars, presence: true
end
