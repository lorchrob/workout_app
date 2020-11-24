class User < ApplicationRecord
  has_many :runs
  has_many :ab_workouts
  has_many :weight_workouts
  
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
