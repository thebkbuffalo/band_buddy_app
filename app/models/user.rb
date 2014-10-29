class User < ActiveRecord::Base
  has_many :answers
  accepts_nested_attributes_for :answers
  has_secure_password
  validates :password, presence: true
  validates :email, presence: true, uniqueness: true


    def current_user_array
      current_user_answers = current_user.answers.map {|user| user.answers}
    end

    def users_arrays
      all_user_answers =  User.all.map {|x| x.answers}
      all_users_arrays = all_user_answers.map do |x|
        x.map {|y| y.answers}
      end
    end

    def in_common_arrays
      common_arrays = user_arrays.map do |users|
        current_user_array & users
      end
    end

    def get_scores(current_user, user)
      current_user_length = current_user_array.length
      user_lengths = in_common_arrays.map {|x| x.length}
      user_scores = user_lengths.map do |length|
        if length % 2 == 1
          p = length.to_f / 11 * 100
          p.to_i
        else
          p = length * 10
        end
      end
      return p
    end

  end
