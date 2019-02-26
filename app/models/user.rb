class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :jobs
  has_many :interpreter_languages
  has_many :languages, through: :interpreter_languages

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :description, presence: true
  # PICTURE IS NOT A REQUIRED FIELD
  validates :availability, presence: true
  validates :location, presence: true
  validates :can_travel, presence: true
  validates :interpreter, presence: true
  validates :phone, presence: true
  validates :daily_rate, presence: true
  validates :linkedin, presence: true
end
