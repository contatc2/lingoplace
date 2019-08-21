class Job < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user, optional: true
  has_many :reviews
  belongs_to :interpreter, class_name: 'User', foreign_key: 'interpreter_id'
  belongs_to :language

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :language, presence: true
end
