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

ActiveRecord::Schema.define(version: 20160911220431) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "plan_id"
    t.integer  "budget"
  end

  add_index "categories", ["plan_id"], name: "index_categories_on_plan_id"

  create_table "plans", force: :cascade do |t|
    t.string   "name"
    t.integer  "budget"
    t.date     "start_date"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  add_index "plans", ["user_id"], name: "index_plans_on_user_id"

  create_table "spendings", force: :cascade do |t|
    t.string   "name"
    t.text     "descrption"
    t.boolean  "planned"
    t.date     "date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
    t.integer  "amount"
  end

  add_index "spendings", ["category_id"], name: "index_spendings_on_category_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.date     "date_birth"
    t.integer  "budget"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
