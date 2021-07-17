class User < ApplicationRecord
  has_many :schedules, dependent: :destroy
  has_many :carfares, dependent: :destroy

  # before_save { self.email = email.downcase }
  # # validates :name, presence: true, length: { maximum: 50 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, length: { maximum: 100 },
  # format: { with: VALID_EMAIL_REGEX },
  # uniqueness: true
  # has_secure_password
  # validates :password, presence: true, length: { minimum: 6 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
