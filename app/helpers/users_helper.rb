module UsersHelper

  

end
# iterate through all users and grab their answers and put in their own arrays

 # soemthing like
 #if common_answers % 2 == 1
    #percent = common_answers.to_f / 10 * 100
 #else
    #percent = common_answers * 10
 #end
#TODO-figure out how to make arrays out of each users answers....not sure.

# [5] band_buddy_app(main)> u1.answers
#   Answer Load (0.5ms)  SELECT "answers".* FROM "answers"  WHERE "answers"."user_id" = $1  [["user_id", 1]]
# => [#<Answer id: 1, question_id: 1, user_id: 1, answers: "The Stones", created_at: "2014-10-29 03:09:57", updated_at: "2014-10-29 03:09:57">,
#  #<Answer id: 2, question_id: 2, user_id: 1, answers: "Parliament Funkadelic", created_at: "2014-10-29 03:09:57", updated_at: "2014-10-29 03:09:57">,
#  #<Answer id: 3, question_id: 3, user_id: 1, answers: "Miles Davis", created_at: "2014-10-29 03:09:57", updated_at: "2014-10-29 03:09:57">,
#  #<Answer id: 4, question_id: 4, user_id: 1, answers: "Bruce Springsteen", created_at: "2014-10-29 03:09:57", updated_at: "2014-10-29 03:09:57">,
#  #<Answer id: 5, question_id: 5, user_id: 1, answers: "Son House", created_at: "2014-10-29 03:09:57", updated_at: "2014-10-29 03:09:57">,
#  #<Answer id: 6, question_id: 6, user_id: 1, answers: "The Ramones", created_at: "2014-10-29 03:09:57", updated_at: "2014-10-29 03:09:57">,
#  #<Answer id: 7, question_id: 7, user_id: 1, answers: "The Black Keys", created_at: "2014-10-29 03:09:57", updated_at: "2014-10-29 03:09:57">,
#  #<Answer id: 8, question_id: 8, user_id: 1, answers: "Sam Cooke", created_at: "2014-10-29 03:09:57", updated_at: "2014-10-29 03:09:57">,
#  #<Answer id: 9, question_id: 9, user_id: 1, answers: "2Pac", created_at: "2014-10-29 03:09:57", updated_at: "2014-10-29 03:09:57">,
#  #<Answer id: 10, question_id: 10, user_id: 1, answers: "The Who", created_at: "2014-10-29 03:09:57", updated_at: "2014-10-29 03:09:57">]
# [6] band_buddy_app(main)> u2 = User.find(3)
#   User Load (0.6ms)  SELECT  "users".* FROM "users"  WHERE "users"."id" = $1 LIMIT 1  [["id", 3]]
# => #<User id: 3, name: "Howard", email: "howard@fakegmail.com", is_band: false, is_musician: true, instrument: "Drummer", style: "funky jazz", years_playing: 13, tour_history: "international", location: "New York City", about_you: "i luvz to drumz", is_smoker: true, favorite_venue: "930 Club", favorite_band: "Earth Wind and Fire", picture: "http://www.allaboutjazz.com/photos/2009/persp7.jpg", video: "", password_digest: "$2a$10$40CD84VFKRr.lUJwKFTqOu/zcpF1XqIvM8QcsFyoAWR...", created_at: "2014-10-29 03:08:20", updated_at: "2014-10-29 03:08:20">
# [7] band_buddy_app(main)> u2.answers
#   Answer Load (0.6ms)  SELECT "answers".* FROM "answers"  WHERE "answers"."user_id" = $1  [["user_id", 3]]
# => [#<Answer id: 11, question_id: 1, user_id: 3, answers: "The Beatles", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 12, question_id: 2, user_id: 3, answers: "James Brown", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 13, question_id: 3, user_id: 3, answers: "John Coltrane", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 14, question_id: 4, user_id: 3, answers: "Billy Joel", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 15, question_id: 5, user_id: 3, answers: "Robert Johnson", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 16, question_id: 6, user_id: 3, answers: "The Clash", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 17, question_id: 7, user_id: 3, answers: "The Black Keys", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 18, question_id: 8, user_id: 3, answers: "Sam Cooke", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 19, question_id: 9, user_id: 3, answers: "Biggie", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 20, question_id: 10, user_id: 3, answers: "Led Zeppelin", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">]
# [8] band_buddy_app(main)> u1_answers = u1.answers
# => [#<Answer id: 1, question_id: 1, user_id: 1, answers: "The Stones", created_at: "2014-10-29 03:09:57", updated_at: "2014-10-29 03:09:57">,
#  #<Answer id: 2, question_id: 2, user_id: 1, answers: "Parliament Funkadelic", created_at: "2014-10-29 03:09:57", updated_at: "2014-10-29 03:09:57">,
#  #<Answer id: 3, question_id: 3, user_id: 1, answers: "Miles Davis", created_at: "2014-10-29 03:09:57", updated_at: "2014-10-29 03:09:57">,
#  #<Answer id: 4, question_id: 4, user_id: 1, answers: "Bruce Springsteen", created_at: "2014-10-29 03:09:57", updated_at: "2014-10-29 03:09:57">,
#  #<Answer id: 5, question_id: 5, user_id: 1, answers: "Son House", created_at: "2014-10-29 03:09:57", updated_at: "2014-10-29 03:09:57">,
#  #<Answer id: 6, question_id: 6, user_id: 1, answers: "The Ramones", created_at: "2014-10-29 03:09:57", updated_at: "2014-10-29 03:09:57">,
#  #<Answer id: 7, question_id: 7, user_id: 1, answers: "The Black Keys", created_at: "2014-10-29 03:09:57", updated_at: "2014-10-29 03:09:57">,
#  #<Answer id: 8, question_id: 8, user_id: 1, answers: "Sam Cooke", created_at: "2014-10-29 03:09:57", updated_at: "2014-10-29 03:09:57">,
#  #<Answer id: 9, question_id: 9, user_id: 1, answers: "2Pac", created_at: "2014-10-29 03:09:57", updated_at: "2014-10-29 03:09:57">,
#  #<Answer id: 10, question_id: 10, user_id: 1, answers: "The Who", created_at: "2014-10-29 03:09:57", updated_at: "2014-10-29 03:09:57">]
# [9] band_buddy_app(main)> u1_answer.map {|x| x.answers}
# NameError: undefined local variable or method `u1_answer' for main:Object
# from (pry):9:in `__pry__'
# [10] band_buddy_app(main)> u1_answers.map {|x| x.answers}
# => ["The Stones",
#  "Parliament Funkadelic",
#  "Miles Davis",
#  "Bruce Springsteen",
#  "Son House",
#  "The Ramones",
#  "The Black Keys",
#  "Sam Cooke",
#  "2Pac",
#  "The Who"]
# [11] band_buddy_app(main)> u2_answers.map {|x| x.answers}
# NameError: undefined local variable or method `u2_answers' for main:Object
# from (pry):11:in `__pry__'
# [12] band_buddy_app(main)> u1_array = u1_answers.map {|x| x.answers}
# => ["The Stones",
#  "Parliament Funkadelic",
#  "Miles Davis",
#  "Bruce Springsteen",
#  "Son House",
#  "The Ramones",
#  "The Black Keys",
#  "Sam Cooke",
#  "2Pac",
#  "The Who"]
# [13] band_buddy_app(main)> u1_array
# => ["The Stones",
#  "Parliament Funkadelic",
#  "Miles Davis",
#  "Bruce Springsteen",
#  "Son House",
#  "The Ramones",
#  "The Black Keys",
#  "Sam Cooke",
#  "2Pac",
#  "The Who"]
# [14] band_buddy_app(main)> u2_answers = u2.answers
# => [#<Answer id: 11, question_id: 1, user_id: 3, answers: "The Beatles", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 12, question_id: 2, user_id: 3, answers: "James Brown", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 13, question_id: 3, user_id: 3, answers: "John Coltrane", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 14, question_id: 4, user_id: 3, answers: "Billy Joel", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 15, question_id: 5, user_id: 3, answers: "Robert Johnson", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 16, question_id: 6, user_id: 3, answers: "The Clash", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 17, question_id: 7, user_id: 3, answers: "The Black Keys", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 18, question_id: 8, user_id: 3, answers: "Sam Cooke", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 19, question_id: 9, user_id: 3, answers: "Biggie", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 20, question_id: 10, user_id: 3, answers: "Led Zeppelin", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">]
# [15] band_buddy_app(main)> u2_array = u2_answers.map {|x| x.answers}
# => ["The Beatles",
#  "James Brown",
#  "John Coltrane",
#  "Billy Joel",
#  "Robert Johnson",
#  "The Clash",
#  "The Black Keys",
#  "Sam Cooke",
#  "Biggie",
#  "Led Zeppelin"]
# [16] band_buddy_app(main)> u1_array & u2_array
# => ["The Black Keys", "Sam Cooke"]
# [17] band_buddy_app(main)> in_common = _
# => ["The Black Keys", "Sam Cooke"]
# [18] band_buddy_app(main)> in_common.length
# => 2
# [19] band_buddy_app(main)> 2 * 10
# => 20
# [20] band_buddy_app(main)> 20 + '%'
# TypeError: String can't be coerced into Fixnum
# from (pry):20:in `+'
# [21] band_buddy_app(main)> 2 / 10
# => 0
# [22] band_buddy_app(main)> 0 * 100
# => 0
# [23] band_buddy_app(main)> a1 = ['a','b','b','c','d','d','e','e','f','g']
# => ["a", "b", "b", "c", "d", "d", "e", "e", "f", "g"]
# [24] band_buddy_app(main)> a2 = ['a','a','b','c','c','d','e','z','z','z']
# => ["a", "a", "b", "c", "c", "d", "e", "z", "z", "z"]
# [25] band_buddy_app(main)> a1 & a2
# => ["a", "b", "c", "d", "e"]
# [26] band_buddy_app(main)> a1.length
# => 10
# [27] band_buddy_app(main)> ic = a1 & a2
# => ["a", "b", "c", "d", "e"]
# [28] band_buddy_app(main)> ic.length
# => 5
# [29] band_buddy_app(main)> 3 / 10
# => 0
# [30] band_buddy_app(main)> 3/10
# => 0
# [31] band_buddy_app(main)> ic = ['a','b','c']
# => ["a", "b", "c"]
# [32] band_buddy_app(main)> ic.length \ 10
# SyntaxError: unexpected $undefined
# ic.length \ 10
#            ^
# [32] band_buddy_app(main)> ic.length / 10
# => 0
# [33] band_buddy_app(main)> (3 / 10)
# => 0
# [34] band_buddy_app(main)> 3 % 10
# => 3
# [35] band_buddy_app(main)> 3.to_f / 10
# => 0.3
# [36] band_buddy_app(main)> .3 * 100
# sh: 1: 3: not found
# Error: there was a problem executing system command: 3 * 100
# [37] band_buddy_app(main)> 0.3 * 100
# => 30.0
# [38] band_buddy_app(main)> ic
# => ["a", "b", "c"]
# [39] band_buddy_app(main)> ic.percent_of(10)
# NoMethodError: undefined method `percent_of' for ["a", "b", "c"]:Array
# from (pry):38:in `__pry__'
# [40] band_buddy_app(main)> ic = ic.length
# => 3
# [41] band_buddy_app(main)> ic.percent_of(10)
# NoMethodError: undefined method `percent_of' for 3:Fixnum
# from (pry):40:in `__pry__'
# [42] band_buddy_app(main)> ic % 1 != 0
# => false
# [43] band_buddy_app(main)> 1.3 % 1 != 0
# => true
# [44] band_buddy_app(main)> 5 % 1 != 0
# => false
# [45] band_buddy_app(main)> ic
# => 3
# [46] band_buddy_app(main)> ic = ['a','b','c']
# => ["a", "b", "c"]
# [47] band_buddy_app(main)> u2_answers
# => [#<Answer id: 11, question_id: 1, user_id: 3, answers: "The Beatles", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 12, question_id: 2, user_id: 3, answers: "James Brown", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 13, question_id: 3, user_id: 3, answers: "John Coltrane", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 14, question_id: 4, user_id: 3, answers: "Billy Joel", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 15, question_id: 5, user_id: 3, answers: "Robert Johnson", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 16, question_id: 6, user_id: 3, answers: "The Clash", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 17, question_id: 7, user_id: 3, answers: "The Black Keys", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 18, question_id: 8, user_id: 3, answers: "Sam Cooke", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 19, question_id: 9, user_id: 3, answers: "Biggie", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">,
#  #<Answer id: 20, question_id: 10, user_id: 3, answers: "Led Zeppelin", created_at: "2014-10-29 03:11:37", updated_at: "2014-10-29 03:11:37">]
# [48] band_buddy_app(main)> u2_length = u2_answers.map {|x| x.answers}.length
# => 10
# [49] band_buddy_app(main)>
#
# [48] band_buddy_app(main)> u2_length = u2_answers.map {|x| x.answers}.length
# => 10
# [49] band_buddy_app(main)> ic.length
# => 3
# [50] band_buddy_app(main)> ic.length.to_f / 10
# => 0.3
# [51] band_buddy_app(main)> 3 % 1 != 0
# => false
# [52] band_buddy_app(main)> 3 % 2
# => 1
# [53] band_buddy_app(main)> 5 % 2
# => 1
# [54] band_buddy_app(main)> 7 % 2
# => 1
# [55] band_buddy_app(main)> 9 % 2
# => 1
# [56] band_buddy_app(main)> 10 % 2
# => 0
# [57] band_buddy_app(main)> 8 % 2
# => 0
# [58] band_buddy_app(main)> 6 % 2
# => 0
# [59] band_buddy_app(main)> 7.to_f / 10 * 100
# => 70.0
# [60] band_buddy_app(main)> 7.to_f / 15 * 100
# => 46.666666666666664
# [61] band_buddy_app(main)> x = _
# => 46.666666666666664
# [62] band_buddy_app(main)> x.to_i
# => 46
# [63] band_buddy_app(main)> x = 7.to_f / 11 * 100
# => 63.63636363636363
# [64] band_buddy_app(main)> x.to_i
