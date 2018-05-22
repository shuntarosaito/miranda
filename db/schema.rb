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

ActiveRecord::Schema.define(version: 20180403115341) do

  create_table "companies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "comment",    limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "display_evaluations", force: :cascade do |t|
    t.integer "user_id",                          limit: 4
    t.boolean "display_salary_rate",                        default: true, null: false
    t.boolean "display_stability_rate",                     default: true, null: false
    t.boolean "display_benefits_rate",                      default: true, null: false
    t.boolean "display_future_rate",                        default: true, null: false
    t.boolean "display_access_rate",                        default: true, null: false
    t.boolean "display_reputation_rate",                    default: true, null: false
    t.boolean "display_self_growth_rate",                   default: true, null: false
    t.boolean "display_human_relationships_rate",           default: true, null: false
    t.boolean "display_promotion_rate",                     default: true, null: false
    t.boolean "display_working_time_rate",                  default: true, null: false
    t.boolean "display_working_environment_rate",           default: true, null: false
    t.boolean "display_rewarding_rate",                     default: true, null: false
    t.boolean "display_social_contribution_rate",           default: true, null: false
  end

  create_table "evaluations", force: :cascade do |t|
    t.integer  "user_id",                  limit: 4
    t.integer  "company_id",               limit: 4
    t.integer  "salary_rate",              limit: 4, default: 0, null: false
    t.integer  "stability_rate",           limit: 4, default: 0, null: false
    t.integer  "benefits_rate",            limit: 4, default: 0, null: false
    t.integer  "future_rate",              limit: 4, default: 0, null: false
    t.integer  "access_rate",              limit: 4, default: 0, null: false
    t.integer  "reputation_rate",          limit: 4, default: 0, null: false
    t.integer  "self_growth_rate",         limit: 4, default: 0, null: false
    t.integer  "human_relationships_rate", limit: 4, default: 0, null: false
    t.integer  "promotion_rate",           limit: 4, default: 0, null: false
    t.integer  "working_time_rate",        limit: 4, default: 0, null: false
    t.integer  "working_environment_rate", limit: 4, default: 0, null: false
    t.integer  "rewarding_rate",           limit: 4, default: 0, null: false
    t.integer  "social_contribution_rate", limit: 4, default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
