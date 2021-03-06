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

ActiveRecord::Schema.define(version: 20140522031756) do

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manifestdetails", force: true do |t|
    t.integer  "manifest_id"
    t.string   "tracking"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manifests", force: true do |t|
    t.string   "origin"
    t.string   "destination"
    t.string   "notes"
    t.decimal  "total_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "packagedetails", force: true do |t|
    t.string   "tracking"
    t.integer  "length"
    t.integer  "width"
    t.integer  "height"
    t.decimal  "piece_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "package_id"
  end

  create_table "packages", force: true do |t|
    t.string   "tracking"
    t.integer  "customer_id"
    t.decimal  "weight"
    t.decimal  "value"
    t.string   "sender_name"
    t.string   "sender_address"
    t.string   "sender_city"
    t.string   "sender_state"
    t.string   "sender_country"
    t.string   "sender_phone"
    t.string   "sender_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trackcodes", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trackings", force: true do |t|
    t.string   "package_id"
    t.datetime "times"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "trackcode_id"
  end

end
