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

ActiveRecord::Schema.define(:version => 20111115164021) do

  create_table "images", :force => true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manufacturers", :force => true do |t|
    t.string   "name",       :limit => 250, :null => false
    t.string   "url",        :limit => 250
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "name",       :limit => 250, :null => false
    t.text     "content"
    t.string   "slug",       :limit => 250, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productcategories", :force => true do |t|
    t.string   "name",              :limit => 250, :null => false
    t.string   "ancestry"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "names_depth_cache"
  end

  add_index "productcategories", ["ancestry"], :name => "index_productcategories_on_ancestry"

  create_table "products", :force => true do |t|
    t.string   "name",               :limit => 250, :null => false
    t.integer  "productcategory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "manufacturer_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.boolean  "admin",                        :default => false
  end

  add_index "users", ["remember_me_token"], :name => "index_users_on_remember_me_token"

end
