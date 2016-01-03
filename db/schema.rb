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

ActiveRecord::Schema.define(version: 20160103190611) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "cities", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "districts", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name"
    t.uuid     "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "districts", ["city_id"], name: "index_districts_on_city_id", using: :btree

  create_table "elections", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name"
    t.date     "vote_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gov_jobs", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "department"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "identities", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "uid"
    t.string   "provider"
    t.string   "token"
    t.uuid     "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id", using: :btree

  create_table "parties", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name"
    t.string   "logo"
    t.string   "abbreviation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "politician_elections", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.integer  "result"
    t.uuid     "politician_id"
    t.uuid     "election_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "politician_elections", ["election_id"], name: "index_politician_elections_on_election_id", using: :btree
  add_index "politician_elections", ["politician_id"], name: "index_politician_elections_on_politician_id", using: :btree

  create_table "politician_gov_jobs", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "politician_id"
    t.uuid     "gov_job_id"
    t.uuid     "party_id"
    t.uuid     "city_id"
    t.integer  "th"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "politician_vote_records", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.integer  "user_id"
    t.uuid     "politician_id"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "politician_vote_records", ["politician_id"], name: "index_politician_vote_records_on_politician_id", using: :btree
  add_index "politician_vote_records", ["user_id"], name: "index_politician_vote_records_on_user_id", using: :btree

  create_table "politician_votes", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.text     "up_voted_user_ids"
    t.text     "down_voted_user_ids"
    t.uuid     "voteable_id"
    t.uuid     "voteable_type"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "politician_votes", ["voteable_id"], name: "index_politician_votes_on_voteable_id", using: :btree
  add_index "politician_votes", ["voteable_type"], name: "index_politician_votes_on_voteable_type", using: :btree

  create_table "politicians", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "party_id"
    t.uuid     "district_id"
    t.uuid     "city_id"
    t.string   "name"
    t.integer  "gender"
    t.date     "birthday"
    t.string   "image"
    t.string   "url"
    t.string   "email"
    t.string   "office_number"
    t.integer  "reputation"
    t.uuid     "election_id"
    t.uuid     "gov_job_id"
    t.uuid     "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "politicians", ["party_id"], name: "index_politicians_on_party_id", using: :btree

  create_table "profiles", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.integer  "gender"
    t.date     "birthday"
    t.uuid     "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "users", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "name"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.uuid     "district_id"
    t.uuid     "city_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
