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

ActiveRecord::Schema.define(:version => 20121122164108) do

  create_table "auth_hashes", :force => true do |t|
    t.string   "auth_hash"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "belts", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "belts_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "belt_id"
  end

  create_table "challenges", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "belt_id"
  end

  create_table "completions", :force => true do |t|
    t.integer  "user_id"
    t.string   "belt"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.datetime "date"
    t.string   "location"
    t.integer  "capacity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "twitter_token"
    t.string   "twitter_secret"
    t.string   "twitter_id"
    t.string   "twitter_handle"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.boolean  "master",          :default => false
    t.boolean  "admin",           :default => false
    t.boolean  "white_belt",      :default => false
    t.string   "linkedin_secret"
    t.string   "linkedin_token"
    t.string   "linkedin_id"
    t.string   "linkedin_handle"
    t.string   "linkedin_email"
  end

end
