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

ActiveRecord::Schema.define(version: 20150812214022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "ebay_categories", force: :cascade do |t|
    t.string  "main_category"
    t.string  "sub_category1"
    t.string  "sub_category2"
    t.string  "sub_category3"
    t.string  "sub_category4"
    t.string  "sub_category5"
    t.integer "children"
    t.string  "category_id"
    t.string  "parent_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.date     "purchase_date"
    t.string   "purchase_source"
    t.decimal  "purchase_price",    precision: 5, scale: 2
    t.string   "store_category"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "workflow_state"
    t.string   "ebay_category"
    t.string   "upc"
    t.string   "condition"
    t.integer  "quantity"
    t.hstore   "item_specifics"
    t.string   "listing_format"
    t.decimal  "listing_price",     precision: 6, scale: 2
    t.string   "listing_duration"
    t.string   "item_location"
    t.string   "payment_policy"
    t.hstore   "package_details"
    t.hstore   "shipping_details"
    t.hstore   "return_policy"
    t.time     "listing_date_time"
  end

end
