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

ActiveRecord::Schema.define(version: 20151016113220) do

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
    t.text     "complaints",   limit: 65535
    t.string   "pre_lva",      limit: 255
    t.string   "pre_rva",      limit: 255
    t.integer  "diagnosis_id", limit: 4
    t.string   "eye",          limit: 255
    t.integer  "treatment_id", limit: 4
    t.boolean  "booked"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "medical_records", ["diagnosis_id"], name: "index_medical_records_on_diagnosis_id", using: :btree
  add_index "medical_records", ["treatment_id"], name: "index_medical_records_on_treatment_id", using: :btree

  create_table "patients", force: :cascade do |t|
    t.string   "first_name",         limit: 255
    t.string   "surname",            limit: 255
    t.string   "other_names",        limit: 255
    t.string   "gender",             limit: 255
    t.string   "age",                limit: 255
    t.string   "address",            limit: 255
    t.string   "phone",              limit: 255
    t.integer  "state_id",           limit: 4
    t.integer  "lga_id",             limit: 4
    t.string   "intervention_state", limit: 255
    t.string   "next_of_kin",        limit: 255
    t.string   "relationship",       limit: 255
    t.string   "nok_phone",          limit: 255
    t.string   "nok_address",        limit: 255
    t.text     "complaints",         limit: 65535
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "patients", ["lga_id"], name: "index_patients_on_lga_id", using: :btree
  add_index "patients", ["state_id"], name: "index_patients_on_state_id", using: :btree

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
    t.integer  "surgery_id",       limit: 4
    t.string   "eye",              limit: 255
    t.string   "average_k",        limit: 255
    t.string   "axial_length",     limit: 255
    t.integer  "iol_power_id",     limit: 4
    t.integer  "iol_insertion_id", limit: 4
    t.integer  "complication_id",  limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "surgeon_id",       limit: 4
  end

  add_index "surgicals", ["complication_id"], name: "index_surgicals_on_complication_id", using: :btree
  add_index "surgicals", ["iol_insertion_id"], name: "index_surgicals_on_iol_insertion_id", using: :btree
  add_index "surgicals", ["iol_power_id"], name: "index_surgicals_on_iol_power_id", using: :btree
  add_index "surgicals", ["surgeon_id"], name: "index_surgicals_on_surgeon_id", using: :btree
  add_index "surgicals", ["surgery_id"], name: "index_surgicals_on_surgery_id", using: :btree

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
  add_foreign_key "medical_records", "diagnoses"
  add_foreign_key "medical_records", "treatments"
  add_foreign_key "patients", "lgas"
  add_foreign_key "patients", "states"
  add_foreign_key "surgicals", "complications"
  add_foreign_key "surgicals", "iol_insertions"
  add_foreign_key "surgicals", "iol_powers"
  add_foreign_key "surgicals", "surgeons"
  add_foreign_key "surgicals", "surgeries"
end
