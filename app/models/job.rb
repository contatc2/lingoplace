class Job < ApplicationRecord
  belongs_to :user
  has_many :reviews
  belongs_to :interpreter, class_name: 'User', foreign_key: 'interpreter_id'
end
