class User < ActiveRecord::Base
  has_many :answers
  accepts_nested_attributes_for :answers
  has_secure_password
  validates :password, presence: true
  validates :email, presence: true, uniqueness: true



    def current_user_array(session)
      current_user = User.find(session)
      current_user.answers.map {|user| user.answers}
    end

    # def users_arrays
    #   # all_user_answers =  User.all.map {|x| x.answers}
    #   # all_users_arrays = all_user_answers.map do |x|
    #   #   x.map {|y| y.answers}
    #   # end
    # end
    #
    # def in_common_arrays(second_user)
    #   common_arrays = second_user.map do |users|
    #     current_user_array & users
    #   end
    # end

    def get_scores(session)

      second_user_answers = answers.map {|user| user.answers}
      in_common_array = current_user_array(session) & second_user_answers
      length = in_common_array.length
      percent = length.to_f / 11 * 100
      percent.to_i
    end

      # current_user_length = current_user_array.length
      # user_lengths = in_common_arrays(second_user).map {|x| x.length}
      # user_scores = user_lengths.map do |length|
      #   p = length.to_f / 11 * 100
      #   p.to_i
      # end
      # return p


  end
