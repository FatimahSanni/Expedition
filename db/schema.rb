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

ActiveRecord::Schema.define(version: 20151018064724) do

  create_table "complications", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "diagnoses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "iol_insertions", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "iol_powers", force: :cascade do |t|
    t.string   "power",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "lgas", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "state_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "lgas", ["state_id"], name: "index_lgas_on_state_id", using: :btree

  create_table "medical_records", force: :cascade do |t|
    t.text     "complaints", limit: 65535
    t.string   "pre_lva",    limit: 255
    t.string   "pre_rva",    limit: 255
    t.string   "eye",        limit: 255
    t.boolean  "booked"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "diagnosis",  limit: 255
    t.string   "treatment",  limit: 255
    t.integer  "patient_id", limit: 4
  end

  add_index "medical_records", ["patient_id"], name: "index_medical_records_on_patient_id", using: :btree

  create_table "patients", force: :cascade do |t|
    t.string   "first_name",         limit: 255
    t.string   "surname",            limit: 255
    t.string   "other_names",        limit: 255
    t.string   "gender",             limit: 255
    t.string   "age",                limit: 255
    t.string   "address",            limit: 255
    t.string   "phone",              limit: 255
    t.string   "intervention_state", limit: 255
    t.string   "next_of_kin",        limit: 255
    t.string   "relationship",       limit: 255
    t.string   "nok_phone",          limit: 255
    t.string   "nok_address",        limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "town",               limit: 255
    t.string   "state",              limit: 255
    t.string   "lga",                limit: 255
  end

  create_table "states", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "surgeons", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "surgeries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "surgicals", force: :cascade do |t|
    t.date     "surgery_date"
    t.string   "eye",           limit: 255
    t.string   "average_k",     limit: 255
    t.string   "axial_length",  limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "post_rva",      limit: 255
    t.string   "post_lva",      limit: 255
    t.string   "surgery",       limit: 255
    t.string   "surgeon",       limit: 255
    t.string   "complication",  limit: 255
    t.string   "iol_power",     limit: 255
    t.string   "iol_insertion", limit: 255
    t.integer  "patient_id",    limit: 4
  end

  add_index "surgicals", ["patient_id"], name: "index_surgicals_on_patient_id", using: :btree

  create_table "treatments", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "visual_acuities", force: :cascade do |t|
    t.string   "va",         limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "lgas", "states"
  add_foreign_key "medical_records", "patients"
  add_foreign_key "surgicals", "patients"
end
