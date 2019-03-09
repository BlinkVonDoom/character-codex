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

ActiveRecord::Schema.define(version: 2019_03_08_205630) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "numenera_character_descriptors", force: :cascade do |t|
    t.string "character_descriptor", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "numenera_character_focus", force: :cascade do |t|
    t.string "character_focus", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "numenera_character_skills", force: :cascade do |t|
    t.string "numenera_skill", default: "", null: false
    t.boolean "trained", default: false, null: false
    t.boolean "skilled", default: false, null: false
    t.integer "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "numenera_character_types", force: :cascade do |t|
    t.string "character_type", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "numenera_characters", force: :cascade do |t|
    t.string "character_name", default: "", null: false
    t.string "character_descriptor", default: "", null: false
    t.string "character_type"
    t.string "character_focus", default: "", null: false
    t.integer "tier", default: 1, null: false
    t.integer "effort", default: 1, null: false
    t.integer "xp", default: 0, null: false
    t.integer "might_pool", default: 0, null: false
    t.integer "speed_pool", default: 0, null: false
    t.integer "intellect_pool", default: 0, null: false
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
