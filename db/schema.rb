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
ActiveRecord::Schema.define(:version => 20130626202107) do

  create_table "mentor_applicants", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name",       :null => false
  end

ActiveRecord::Schema.define(:version => 20130701175025) do

  create_table "entrepreneur_applications", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "city"
    t.integer  "number"
    t.string   "email"
    t.string   "employed"
    t.string   "internet"
    t.string   "phone_type"
    t.string   "picture"
    t.string   "availability"
    t.text     "passion"
    t.text     "business_idea"
    t.text     "sustainable"
    t.text     "why"
    t.text     "impact"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "mentor_applicants", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name",       :null => false
  end

  create_table "mentors", :force => true do |t|
    t.string   "name"
    t.string   "occupation"
    t.string   "email"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "why"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end
end
