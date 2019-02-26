class Job < ApplicationRecord
  belongs_to :user
  has_many :reviews
  belongs_to :interpreter, class_name: 'User', foreign_key: 'interpreter_id'

  validates :name, presence: true
  validates :description, presence: true
  validates :language, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :date_posted, presence: true
  validates :budget, presence: true
  # NO NEED FOR VALIDATION AS ADD DEFAULT VALUE IS NOT STARTED
  #  DO NOT FORGET TO UPDATE MIGRATION FILE
end
