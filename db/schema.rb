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

ActiveRecord::Schema.define(version: 20150325151448) do

  create_table "collaborators", force: :cascade do |t|
    t.string   "test_name",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "tag_line",        limit: 255
    t.string   "benefactor",      limit: 255
    t.string   "benefactor_need", limit: 255
    t.string   "benefactor_pain", limit: 255
    t.string   "benefactor_gain", limit: 255
    t.string   "competitor",      limit: 255
    t.boolean  "assist_request",  limit: 1
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "collaborator_id", limit: 4
    t.integer  "project_id",      limit: 4
    t.integer  "originality",     limit: 4
    t.integer  "impact",          limit: 4
    t.integer  "measurability",   limit: 4
    t.integer  "practicality",    limit: 4
    t.integer  "applicability",   limit: 4
    t.text     "comment",         limit: 65535
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "votes", ["collaborator_id", "project_id"], name: "index_votes_on_collaborator_id_and_project_id", using: :btree

end
