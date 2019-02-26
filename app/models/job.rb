class Job < ApplicationRecord
  belongs_to :user
  has_many :reviews
  belongs_to :interpreter, class_name: ''
  has_many :users
end
