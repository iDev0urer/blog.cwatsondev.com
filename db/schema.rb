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

ActiveRecord::Schema.define(version: 20151025195708) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",                            null: false
    t.string   "slug",                            null: false
    t.text     "description",        default: ""
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "parent_category_id"
  end

  add_index "categories", ["slug"], name: "index_categories_on_slug", unique: true

  create_table "post_categories", force: :cascade do |t|
    t.integer  "post_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "post_categories", ["category_id"], name: "index_post_categories_on_category_id"
  add_index "post_categories", ["post_id"], name: "index_post_categories_on_post_id"

  create_table "posts", force: :cascade do |t|
    t.string   "title",            default: "Untitled", null: false
    t.text     "content",          default: ""
    t.string   "slug"
    t.string   "seo_title"
    t.string   "seo_description"
    t.string   "seo_keywords"
    t.string   "format"
    t.string   "featured_image"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "state",            default: "draft"
    t.boolean  "comments_enabled", default: true
    t.text     "excerpt"
  end

  create_table "settings", force: :cascade do |t|
    t.string   "var",                   null: false
    t.text     "value"
    t.integer  "thing_id"
    t.string   "thing_type", limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "settings", ["thing_type", "thing_id", "var"], name: "index_settings_on_thing_type_and_thing_id_and_var", unique: true

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true

end
