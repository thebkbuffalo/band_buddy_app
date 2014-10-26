class Question < ActiveRecord::Base
  belongs_to :answer
  validates :question, presence: true
end
