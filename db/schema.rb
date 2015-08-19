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

ActiveRecord::Schema.define(version: 20150819000913) do

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

  create_table "packages", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "package_type"
    t.string   "length"
    t.string   "width"
    t.string   "height"
    t.string   "weight"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "packages", ["product_id"], name: "index_packages_on_product_id", using: :btree

  create_table "photos", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "name"
    t.string   "image"
    t.boolean  "main"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.date     "purchase_date"
    t.string   "purchase_source"
    t.decimal  "purchase_price",                precision: 5, scale: 2
    t.string   "store_category"
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
    t.string   "workflow_state"
    t.string   "ebay_category"
    t.string   "upc"
    t.string   "condition"
    t.integer  "quantity"
    t.hstore   "item_specifics"
    t.string   "listing_format"
    t.decimal  "listing_price",                 precision: 6, scale: 2
    t.string   "listing_duration"
    t.string   "item_location"
    t.string   "payment_policy"
    t.time     "listing_date_time"
    t.string   "listing_title"
    t.string   "country_region_of_manufacture"
  end

  add_index "products", ["item_specifics"], name: "products_item_specifics", using: :gin

  create_table "return_policies", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "accepted_or_not"
    t.string   "contact_time_limit"
    t.string   "refund_type"
    t.string   "shipping"
    t.hstore   "details"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "return_policies", ["product_id"], name: "index_return_policies_on_product_id", using: :btree

  create_table "ship_details", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "handling_time"
    t.string   "shipping_services"
    t.string   "international"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "ship_details", ["product_id"], name: "index_ship_details_on_product_id", using: :btree

end
