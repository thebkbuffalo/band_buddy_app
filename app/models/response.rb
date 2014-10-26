class Response < ActiveRecord::Base
  has_many :users
  has_many :answers
  validates :answer_id, :user_id, presence: true
end
