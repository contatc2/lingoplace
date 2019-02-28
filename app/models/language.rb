class Language < ApplicationRecord
  has_many :interpreter_languages
  has_many :users, through: :interpreter_languages
  has_many :jobs

  validates :name, presence: true
end
