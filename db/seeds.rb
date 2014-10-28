# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Anastasia", email: "ana@fakegmail.com", password_digest: "guest", is_band: false, is_band: true, location: "New Orleans, LA", instrument: "Drum Buddy and Banjo", years_playing: 8, style: "awesome", tour_history: "8 years", about_you: "The baddest cat from Nola", is_smoker: true, favorite_venue: "The Spotted Cat", favorite_band: "Prince", picture: "", video: "")

# User.create(name: "Jenny", email: "jenny@fakegmail.com", password: "guest", password_digest: "guest", )
