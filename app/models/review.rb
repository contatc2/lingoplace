class Review < ApplicationRecord
  belongs_to :job

  validates :description, presence: true
  validates :stars, presence: true
  validates :jobs_id, presence: true
end
