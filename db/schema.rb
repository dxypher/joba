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

ActiveRecord::Schema.define(:version => 20120606230030) do

  create_table "attachments", :force => true do |t|
    t.text     "description"
    t.string   "name"
    t.string   "file"
    t.integer  "attachable_id"
    t.string   "attachable_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

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
    t.integer  "user_id"
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
    t.string   "response"
    t.date     "application_date"
    t.text     "job_summary"
    t.string   "job_posting"
    t.integer  "company_id"
    t.string   "document"
    t.integer  "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
