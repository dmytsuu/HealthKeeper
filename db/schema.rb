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

ActiveRecord::Schema.define(version: 2020_01_04_161340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.bigint "patient_id"
    t.bigint "physician_id"
    t.integer "status", default: 0
    t.date "date"
    t.text "diagnose"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "time"
    t.string "symptoms", array: true
    t.string "complaints"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
    t.index ["physician_id"], name: "index_appointments_on_physician_id"
  end

  create_table "appointments_diseases", id: false, force: :cascade do |t|
    t.bigint "appointment_id", null: false
    t.bigint "disease_id", null: false
    t.index ["appointment_id"], name: "index_appointments_diseases_on_appointment_id"
    t.index ["disease_id"], name: "index_appointments_diseases_on_disease_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.bigint "patient_id"
    t.bigint "physician_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_conversations_on_patient_id"
    t.index ["physician_id"], name: "index_conversations_on_physician_id"
  end

  create_table "diseases", force: :cascade do |t|
    t.string "name"
    t.integer "temperature_above"
    t.integer "temperature_below"
    t.string "blood_types"
    t.string "symptoms", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "conversation_id"
    t.string "user_type"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_type", "user_id"], name: "index_messages_on_user_type_and_user_id"
  end

  create_table "parents", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_parents_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "name"
    t.string "surname"
    t.string "middlename"
    t.string "sex"
    t.string "address"
    t.date "birth_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "weight"
    t.integer "height"
    t.string "blood_type"
    t.integer "age"
    t.string "photo"
    t.index ["email"], name: "index_patients_on_email", unique: true
    t.index ["reset_password_token"], name: "index_patients_on_reset_password_token", unique: true
  end

  create_table "physicians", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "name"
    t.string "surname"
    t.string "middlename"
    t.string "specification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.string "phone"
    t.string "photo"
  end

  add_foreign_key "appointments", "patients"
  add_foreign_key "appointments", "physicians"
  add_foreign_key "conversations", "patients"
  add_foreign_key "conversations", "physicians"
  add_foreign_key "messages", "conversations"
  add_foreign_key "parents", "patients"
end
