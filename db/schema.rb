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

ActiveRecord::Schema.define(version: 2021_07_08_110431) do

  create_table "reviews", force: :cascade do |t|
    t.integer "tv_serial_id"
    t.string "user"
    t.integer "stars"
    t.text "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tv_serial_id"], name: "index_reviews_on_tv_serial_id"
  end

  create_table "serie_data", force: :cascade do |t|
    t.integer "tv_serial_id"
    t.string "genre"
    t.integer "number_of_seasons"
    t.datetime "date_of_first_release"
    t.string "director"
    t.string "actor"
    t.string "shoot_location"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tv_serial_id"], name: "index_serie_data_on_tv_serial_id"
  end

  create_table "tv_serials", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
