class Answer < ActiveRecord::Base
  belongs_to :response
  belongs_to :question
  validates :question_id, :answer, presences: true
end
