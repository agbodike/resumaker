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

ActiveRecord::Schema.define(version: 20140226230933) do

  create_table "educations", force: true do |t|
    t.string   "university"
    t.string   "degree"
    t.string   "major"
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "start_year"
    t.integer  "end_year"
  end

  add_index "educations", ["resume_id"], name: "index_educations_on_resume_id"

  create_table "experience_items", force: true do |t|
    t.text     "description"
    t.integer  "experience_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "experience_items", ["experience_id"], name: "index_experience_items_on_experience_id"

  create_table "experiences", force: true do |t|
    t.string   "company"
    t.string   "job_title"
    t.string   "location"
    t.string   "description"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "experiences", ["resume_id"], name: "index_experiences_on_resume_id"

  create_table "resumes", force: true do |t|
    t.string   "title"
    t.string   "objective"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
