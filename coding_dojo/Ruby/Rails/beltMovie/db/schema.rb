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

ActiveRecord::Schema.define(version: 20161212223753) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attends", force: true do |t|
    t.integer  "user_id"
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attends", ["movie_id"], name: "index_attends_on_movie_id", using: :btree
  add_index "attends", ["user_id"], name: "index_attends_on_user_id", using: :btree

  create_table "movies", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "rating"
    t.string   "director"
    t.string   "length"
    t.integer  "user_id"
    t.integer  "theater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "movies", ["theater_id"], name: "index_movies_on_theater_id", using: :btree
  add_index "movies", ["user_id"], name: "index_movies_on_user_id", using: :btree

  create_table "stars", force: true do |t|
    t.integer  "rating"
    t.integer  "starable_id"
    t.string   "starable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "theaters", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "email"
    t.integer  "age"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
