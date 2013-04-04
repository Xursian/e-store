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

ActiveRecord::Schema.define(:version => 20130404150255) do

  create_table "Products", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price",          :precision => 8, :scale => 2
    t.integer  "stock_quantity"
    t.string   "item"
    t.decimal  "sale_price",     :precision => 8, :scale => 2
    t.string   "image"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "postal_code"
    t.string   "email"
    t.integer  "provence_id"
    t.string   "phone_number"
    t.string   "creditcard_number"
    t.decimal  "current_credits",   :precision => 8, :scale => 2
    t.string   "password"
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "lineitems", :force => true do |t|
    t.integer  "quantity"
    t.decimal  "price",      :precision => 8, :scale => 2
    t.integer  "product_id"
    t.integer  "order_id"
    t.decimal  "sale_price", :precision => 8, :scale => 2
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "orders", :force => true do |t|
    t.string   "status"
    t.decimal  "pst_rate",    :precision => 8, :scale => 2
    t.decimal  "gst_rate",    :precision => 8, :scale => 2
    t.decimal  "hst_rate",    :precision => 8, :scale => 2
    t.integer  "customer_id"
    t.decimal  "balance",     :precision => 8, :scale => 2
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "provences", :force => true do |t|
    t.string   "name"
    t.decimal  "pst",           :precision => 8, :scale => 2
    t.decimal  "gst",           :precision => 8, :scale => 2
    t.decimal  "hst",           :precision => 8, :scale => 2
    t.decimal  "shipping_cost", :precision => 8, :scale => 2
    t.integer  "eta_days"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.string   "code"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
