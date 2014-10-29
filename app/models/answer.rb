class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  # validates :question_id, :answer, presences: true

  def self.group_save(user, hash)
    hash.each do |k,v|
      Answer.create(user_id: user.id, question_id: k.to_i, answers: v)
    end
  end
end
