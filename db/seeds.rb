# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Question.destroy_all

User.create(
  name: "Anastasia",
  email: "ana@fakegmail.com",
  password: "guest",
  is_band: true,
  is_band: false,
  location: "New Orleans, LA",
  instrument: "Drum Buddy and Banjo",
  years_playing: 8,
  style: "awesome",
  tour_history: "8 years",
  about_you: "The baddest cat from Nola",
  is_smoker: true,
  favorite_venue: "The Spotted Cat",
  favorite_band: "Prince",
  picture: "http://50632a5e2da3d401de2c-e98b4c2d5d863a4eed0a475484b91981.r49.cf1.rackcdn.com/6660_Anastasia-Konecky.jpg",
  video: ""
)

User.create(
  name: "Jenny Jive & the Uptown 5",
  email: "jenny@fakegmail.com",
  password: "guest",
  is_band: true,
  is_musician: false,
  location: "Paris, FR",
  instrument: "Guitar",
  years_playing: 5,
  style: "rock and roll",
  tour_history: "3 US tours",
  about_you: "ROCK AND ROLLLLLLLLLLLLLLLL",
  is_smoker: false,
  favorite_venue: "The Knitting Factory",
  favorite_band: "Pantera",
  picture: "http://www.rick.com/wp-content/uploads/2013/04/Joan-Jett-album-cover.jpg",
  video: ""
)

User.create(
  name: "Howard",
  email: "howard@fakegmail.com",
  password: "guest",
  is_band: false,
  is_musician: true,
  location: "New York City",
  instrument: "Drummer",
  years_playing: 13,
  style: "funky jazz",
  tour_history: "international",
  about_you: "i luvz to drumz",
  is_smoker: true,
  favorite_venue: "930 Club",
  favorite_band: "Earth Wind and Fire",
  picture: "http://www.allaboutjazz.com/photos/2009/persp7.jpg",
  video: ""
)

User.create(
  name: "The Bottom Dollars",
  email: "dollars@fakegmail.com",
  password: "guest",
  is_band: true,
  is_musician: false,
  location: "San Francisco, CA",
  instrument: "lead guitar/multi-instrumentalist",
  years_playing: 5,
  style: "rock n' soul",
  tour_history: "5 US tours",
  about_you: "we're a brooklyn based band, we like touring, camping, and bourbon",
  is_smoker: true,
  favorite_venue: "Brooklyn Bowl",
  favorite_band: "The Clash",
  picture: "http://f1.bcbits.com/img/0003509604_10.jpg",
  video: ""
)

Question.create(
  question_text: "The Stones or The Beatles?",
  answer_1: "The Stones",
  answer_2: "The Beatles"
)

Question.create(
  question_text: "Parliament Funkadelic or James Brown?",
  answer_1: "Parliament Funkadelic",
  answer_2: "James Brown"
)

Question.create(
  question_text: "John Coltrane or Miles Davis?",
  answer_1: "John Coltrane",
  answer_2: "Miles Davis"
)

Question.create(
  question_text: "Bruce Springsteen or Billy Joel?",
  answer_1: "Bruce Springsteen",
  answer_2: "Billy Joel"
)

Question.create(
  question_text: "Robert Johnson or Son House?",
  answer_1: "Robert Johnson",
  answer_2: "Son House"
)

Question.create(
  question_text: "The Clash or The Ramones?",
  answer_1: "The Clash",
  answer_2: "The Ramones"
)

Question.create(
  question_text: "The Black Keys or The White Stripes?",
  answer_1: "The Black Keys",
  answer_2: "The White Stripes"
)

Question.create(
  question_text: "Sam Cooke or Otis Redding?",
  answer_1: "Sam Cooke",
  answer_2: "Otis Redding"
)

Question.create(
  question_text: "2Pac or Biggie?",
  answer_1: "2Pac",
  answer_2: "Biggie"
)

Question.create(
  question_text: "Led Zeppelin or The Who?",
  answer_1: "Led Zeppelin",
  answer_2: "The Who"
)
