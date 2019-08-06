class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  has_many :jobs
  has_many :interpreter_languages
  has_many :languages, through: :interpreter_languages

  validates :email, presence: true

  include PgSearch
  pg_search_scope :search_by_name,
    against: %i[first_name last_name],
  associated_against: {
    interpreter_languages: :language_id,
    languages: :name
  },
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

  def display_languages
    languages.map(&:name).join(', ')
  end
end
