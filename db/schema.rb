# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141024222126) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: true do |t|
    t.integer  "question_id"
    t.string   "beatles",           null: false
    t.string   "stones",            null: false
    t.string   "pfunk",             null: false
    t.string   "james_brown",       null: false
    t.string   "pac",               null: false
    t.string   "biggie",            null: false
    t.string   "ramones",           null: false
    t.string   "sam_cooke",         null: false
    t.string   "otis_redding",      null: false
    t.string   "the_white_stripes", null: false
    t.string   "the_black_keys",    null: false
    t.string   "the_smiths",        null: false
    t.string   "the_cure",          null: false
    t.string   "led_zeppelin",      null: false
    t.string   "the_who",           null: false
    t.string   "bruce_springsteen", null: false
    t.string   "billy_joel",        null: false
    t.string   "john_coltrane",     null: false
    t.string   "miles_davis",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.string   "bealtes_or_stones",                   null: false
    t.string   "pfunk_or_james_brown",                null: false
    t.string   "pac_or_biggie",                       null: false
    t.string   "ramons_or_sex_pistols",               null: false
    t.string   "sam_cooke_or_otis_redding",           null: false
    t.string   "the_white_stripes_or_the_black_keys", null: false
    t.string   "the_smiths_or_the_cure",              null: false
    t.string   "led_zeppelin_or_the_who",             null: false
    t.string   "bruce_springsteen_or_billy_joel",     null: false
    t.string   "john_coltrane_or_miles_davis",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "responses", force: true do |t|
    t.integer  "user_id"
    t.integer  "answer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name",            null: false
    t.string   "email",           null: false
    t.boolean  "is_band"
    t.boolean  "is_musician"
    t.integer  "years_playing",   null: false
    t.string   "tour_history",    null: false
    t.string   "location",        null: false
    t.string   "picture"
    t.string   "video"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
