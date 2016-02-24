require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_many :recipes
  has_many :categories, through: :recipes
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  has_secure_password
end
