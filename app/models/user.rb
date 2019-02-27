class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :jobs
  has_many :interpreter_languages
  has_many :languages, through: :interpreter_languages

  validates :email, presence: true
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :description, presence: true
  # PICTURE IS NOT A REQUIRED FIELD
  # validates :availability, presence: true
  # validates :location, presence: true
  # validates :can_travel, presence: true
  # FOR INTERPRETER, DEFAULT VALUE IS NIL IF YOU ARE NOT AN INTERPRETER
  # validates :daily_rate, presence: true
  # PHONE NOT ALWAYS NECESSARY FOR UI
  # LINKEDIN NOT ALWAYS NECESSARY FOR UI
end
