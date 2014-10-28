# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

User.create(
  name: "Anastasia",
  email: "ana@fakegmail.com",
  password: "guest",
  is_band: false,
  is_band: true,
  location: "New Orleans, LA",
  instrument: "Drum Buddy and Banjo",
  years_playing: 8,
  style: "awesome",
  tour_history: "8 years",
  about_you: "The baddest cat from Nola",
  is_smoker: true,
  favorite_venue: "The Spotted Cat",
  favorite_band: "Prince",
  picture: "",
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
