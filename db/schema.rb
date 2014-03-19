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

ActiveRecord::Schema.define(:version => 20140313134036) do

  create_table "ads", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "title"
    t.string   "link"
    t.string   "title_1"
    t.string   "title_2"
    t.string   "title_3"
    t.string   "text_1"
    t.string   "text_2"
    t.string   "text_3"
    t.string   "link_1"
    t.string   "link_2"
    t.string   "link_3"
    t.string   "colour_bg"
    t.string   "colour_bg_hover"
    t.string   "colour_link"
    t.string   "colour_link_hover"
    t.string   "colour_border"
    t.string   "colour_text"
  end

  create_table "images", :force => true do |t|
    t.integer  "position"
    t.string   "file"
    t.integer  "ad_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "item_id"
  end

  create_table "items", :force => true do |t|
    t.string   "title"
    t.string   "content"
    t.string   "link"
    t.integer  "ad_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "file"
  end

end
