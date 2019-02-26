class Language < ApplicationRecord
  has_many :interpreter_languages
  has_many :users, through: :interpreter_languages

  validates :name, presence: true
end
