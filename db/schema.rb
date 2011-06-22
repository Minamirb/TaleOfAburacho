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

ActiveRecord::Schema.define(:version => 20110622151200) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "category_histories", :force => true do |t|
    t.integer  "category_id"
    t.integer  "member_id"
    t.boolean  "complete"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feelings", :force => true do |t|
    t.integer  "sake_id"
    t.integer  "member_id"
    t.string   "memo"
    t.string   "doux_brut"
    t.string   "bitter"
    t.string   "rough"
    t.string   "hard_right"
    t.string   "umami"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "histories", :force => true do |t|
    t.integer  "sake_id"
    t.integer  "member_id"
    t.boolean  "drunk"
    t.boolean  "next_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sake_categories", :force => true do |t|
    t.integer  "sake_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sakes", :force => true do |t|
    t.string   "name"
    t.integer  "price"
    t.string   "recommend"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "comment"
    t.string   "url_large"
    t.string   "url_small"
  end

end
