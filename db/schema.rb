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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130511225822) do

  create_table "guest_posts", :force => true do |t|
    t.string   "text"
    t.datetime "created_at"
    t.integer  "user_id"
    t.integer  "person_id"
  end

  create_table "people", :force => true do |t|
    t.string "dob"
    t.string "dod"
    t.string "full_name"
    t.string "quote"
    t.text   "eulogy",    :limit => 255
    t.string "charity"
    t.string "photo_url"
  end

  create_table "trait_types", :force => true do |t|
    t.string "name"
    t.string "image_url"
    t.string "description"
  end

  create_table "traits", :force => true do |t|
    t.integer "person_id"
    t.integer "trait_type_id"
  end

  create_table "users", :force => true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "full_name"
    t.string  "email"
    t.integer "uid"
    t.string  "access_token"
    t.string  "provider"
    t.string  "avatar"
  end

end
