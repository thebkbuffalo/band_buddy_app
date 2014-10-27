class User < ActiveRecord::Base
  has_many :answers
  has_secure_password
  validates :password, presence: true
  validates :email, presence: true, uniqueness: true
end
