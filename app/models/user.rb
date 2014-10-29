class User < ActiveRecord::Base
  has_many :answers
  accepts_nested_attributes_for :answers
  has_secure_password
  validates :password, presence: true
  validates :email, presence: true, uniqueness: true



    def using_now_array
      using_now = User.find(current_user.id)
      using_now.answers.map {|user| user.answers}
    end


    def get_scores(session)

      second_user_answers = answers.map {|user| user.answers}
      in_common_array = using_now_array & second_user_answers
      length = in_common_array.length
      percent = length.to_f / 11 * 100
      percent.to_i
    end




  end
