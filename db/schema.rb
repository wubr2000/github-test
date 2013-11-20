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

ActiveRecord::Schema.define(version: 20131120155518) do

  create_table "comments", force: true do |t|
    t.text     "body"
    t.datetime "posted_at"
    t.integer  "post_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["post_item_id"], name: "index_comments_on_post_item_id"

  create_table "post_items", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.date     "published_on"
    t.boolean  "is_featured"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "post_items_tags", id: false, force: true do |t|
    t.integer "post_item_id"
    t.integer "tag_id"
  end

  add_index "post_items_tags", ["post_item_id", "tag_id"], name: "index_post_items_tags_on_post_item_id_and_tag_id", unique: true
  add_index "post_items_tags", ["post_item_id"], name: "index_post_items_tags_on_post_item_id"
  add_index "post_items_tags", ["tag_id"], name: "index_post_items_tags_on_tag_id"

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
