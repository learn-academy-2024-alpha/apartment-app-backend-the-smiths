# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_04_17_023619) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apartments", force: :cascade do |t|
    t.string "street"
    t.string "unit"
    t.string "city"
    t.string "state"
    t.integer "square_footage"
    t.string "price"
    t.integer "bedrooms"
    t.float "bathrooms"
    t.string "pets"
    t.text "image"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "smart_security_system"
    t.boolean "rooftop_pool"
    t.boolean "golf_course"
    t.boolean "community_garden"
    t.boolean "onsite_daycare"
    t.boolean "keyless_entry"
    t.boolean "smart_thermostat"
    t.boolean "spa"
    t.boolean "concierge"
    t.boolean "ocean_view"
    t.boolean "personal_chef"
    t.boolean "fiber_optic"
    t.boolean "maid_service"
    t.boolean "pizza_ovens"
    t.boolean "hibachi_grill"
    t.boolean "full_kitchen"
    t.string "name"
  end

  create_table "jwt_denylist", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.index ["jti"], name: "index_jwt_denylist_on_jti"
  end

  create_table "users", force: :cascade do |t|
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
