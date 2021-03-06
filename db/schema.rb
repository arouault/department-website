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

ActiveRecord::Schema.define(version: 20160829200151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "datasets", force: :cascade do |t|
    t.string   "name"
    t.text     "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "download"
    t.integer  "project_id"
  end

  create_table "datasets_services", id: false, force: :cascade do |t|
    t.integer "service_id"
    t.integer "dataset_id"
  end

  add_index "datasets_services", ["dataset_id"], name: "index_datasets_services_on_dataset_id", using: :btree
  add_index "datasets_services", ["service_id"], name: "index_datasets_services_on_service_id", using: :btree

  create_table "groups", force: :cascade do |t|
    t.string   "title"
    t.text     "desc"
    t.string   "tagline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "position"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "screenshot"
    t.string   "icon"
    t.string   "url"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "preview_file_name"
    t.string   "preview_content_type"
    t.integer  "preview_file_size"
    t.datetime "preview_updated_at"
    t.boolean  "featured",             default: false
    t.string   "tagline"
    t.integer  "position"
  end

  create_table "projects_services", id: false, force: :cascade do |t|
    t.integer "service_id"
    t.integer "project_id"
  end

  add_index "projects_services", ["project_id"], name: "index_projects_services_on_project_id", using: :btree
  add_index "projects_services", ["service_id"], name: "index_projects_services_on_service_id", using: :btree

  create_table "services", force: :cascade do |t|
    t.string   "title"
    t.text     "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "group_id"
    t.integer  "position"
  end

  create_table "services_tools", id: false, force: :cascade do |t|
    t.integer "service_id"
    t.integer "tool_id"
  end

  add_index "services_tools", ["service_id"], name: "index_services_tools_on_service_id", using: :btree
  add_index "services_tools", ["tool_id"], name: "index_services_tools_on_tool_id", using: :btree

  create_table "staff", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "bio"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "name"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.text     "bio"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "group_id"
    t.integer  "position"
    t.string   "role"
    t.string   "email"
  end

  create_table "tools", force: :cascade do |t|
    t.string   "title"
    t.string   "screenshot"
    t.string   "url"
    t.text     "body"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "screenshot_file_name"
    t.string   "screenshot_content_type"
    t.integer  "screenshot_file_size"
    t.datetime "screenshot_updated_at"
    t.text     "tagline"
    t.string   "color"
    t.string   "icon"
    t.integer  "position"
    t.integer  "project_id"
  end

end
