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

ActiveRecord::Schema.define(version: 2021_06_21_123210) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenges", force: :cascade do |t|
    t.string "c_type"
    t.string "level"
    t.string "challenge_slug"
    t.string "challenge_description"
    t.string "challenge_img"
    t.string "challenge_link"
    t.string "challenge_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "joint_user_rooms", force: :cascade do |t|
    t.bigint "room_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["room_id"], name: "index_joint_user_rooms_on_room_id"
    t.index ["user_id"], name: "index_joint_user_rooms_on_user_id"
  end

  create_table "joint_users_to_ppations", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "participation_challenge_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["participation_challenge_id"], name: "index_joint_users_to_ppations_on_participation_challenge_id"
    t.index ["user_id"], name: "index_joint_users_to_ppations_on_user_id"
  end

  create_table "joint_users_to_projects", force: :cascade do |t|
    t.bigint "project_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_joint_users_to_projects_on_project_id"
    t.index ["user_id"], name: "index_joint_users_to_projects_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id"
    t.bigint "room_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["room_id"], name: "index_messages_on_room_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "neededs", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "participation_challenges", force: :cascade do |t|
    t.bigint "challenge_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["challenge_id"], name: "index_participation_challenges_on_challenge_id"
    t.index ["user_id"], name: "index_participation_challenges_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "project_slug"
    t.string "logo_url"
    t.string "project_title"
    t.text "description"
    t.bigint "owner_id"
    t.string "figma_link"
    t.string "git_link"
    t.string "trello_link"
    t.text "story"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "needed_id"
    t.index ["needed_id"], name: "index_projects_on_needed_id"
    t.index ["owner_id"], name: "index_projects_on_owner_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.text "description"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "joint_user_rooms", "rooms"
  add_foreign_key "joint_user_rooms", "users"
  add_foreign_key "messages", "rooms"
  add_foreign_key "messages", "users"
end
