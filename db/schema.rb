# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_30_010129) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bakes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "total_flour_g"
    t.integer "total_flour_p"
    t.integer "water_g"
    t.integer "water_p"
    t.integer "salt_g"
    t.integer "salt_p"
    t.integer "leaven_g"
    t.integer "leaven_p"
    t.integer "hydration"
    t.integer "rating"
    t.string "name"
    t.string "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notes", force: :cascade do |t|
    t.integer "bake_id"
    t.string "title"
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
