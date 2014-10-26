class User < ActiveRecord::Base
  belongs_to :response
  has_secure_password
  validates :password, :name,  presence: true
  validates :email, presence: true, uniqueness: true
end
