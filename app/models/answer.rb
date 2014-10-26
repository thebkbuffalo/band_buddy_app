class Answer < ActiveRecord::Base
  belongs_to :response
  has_many :questions
  validates :question_id, :answer, presences: true
end
