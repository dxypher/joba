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

ActiveRecord::Schema.define(:version => 20120511184806) do

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.integer  "founded"
    t.string   "website"
    t.string   "job_board"
    t.string   "blog"
    t.integer  "phone"
    t.string   "email"
    t.string   "industry"
    t.text     "business_model"
    t.text     "main_competitors"
    t.text     "threats"
    t.text     "opportunities"
    t.text     "latest_news"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "jobs", :force => true do |t|
    t.integer  "phone"
    t.string   "email"
    t.string   "website"
    t.string   "blog"
    t.string   "job_board"
    t.text     "notes"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "job_title"
    t.string   "company"
    t.string   "response"
    t.date     "application_date"
    t.text     "job_summary"
    t.string   "job_posting"
    t.integer  "company_id"
  end

end
