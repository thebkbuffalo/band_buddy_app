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

ActiveRecord::Schema.define(version: 20141024222118) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: true do |t|
    t.integer  "question_id"
    t.integer  "user_id"
    t.string   "choice",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.string   "question_text", null: false
    t.string   "answer_1",      null: false
    t.string   "answer_2",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name",            null: false
    t.string   "email",           null: false
    t.boolean  "is_band"
    t.boolean  "is_musician"
    t.string   "instrument"
    t.string   "style"
    t.integer  "years_playing",   null: false
    t.string   "tour_history",    null: false
    t.string   "location",        null: false
    t.string   "about_you"
    t.boolean  "is_smoker"
    t.string   "favorite_venue"
    t.string   "favorite_band"
    t.string   "picture"
    t.string   "video"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
