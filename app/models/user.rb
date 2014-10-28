class User < ActiveRecord::Base
  has_many :answers
  accepts_nested_attributes_for :answers
  has_secure_password
  validates :password, presence: true
  validates :email, presence: true, uniqueness: true
end
