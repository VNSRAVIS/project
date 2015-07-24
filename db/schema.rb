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

ActiveRecord::Schema.define(version: 20150723093545) do

  create_table "freememories", force: :cascade do |t|
    t.integer  "time"
    t.string   "build"
    t.string   "vvx300"
    t.string   "vvx310"
    t.string   "vvx400"
    t.string   "vvx410"
    t.string   "vvx500"
    t.string   "vvx600"
    t.string   "vvx1500"
    t.string   "tinman"
    t.string   "vvx301"
    t.string   "vvx401"
    t.string   "vvx501"
    t.string   "vvx601"
    t.integer  "freememory"
    t.string   "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memories", force: :cascade do |t|
    t.integer  "time"
    t.string   "build"
    t.string   "platform"
    t.string   "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "static_analyses", force: :cascade do |t|
    t.integer  "svnversion"
    t.integer  "time"
    t.integer  "total"
    t.integer  "critical"
    t.integer  "error"
    t.integer  "warning"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
