class Job < ApplicationRecord
  belongs_to :user, optional: true
  has_many :reviews
  belongs_to :interpreter, class_name: 'User', foreign_key: 'interpreter_id'
  belongs_to :language

  validates :name, presence: true
  validates :description, presence: true
  validates :language, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :date_posted, presence: true
end
