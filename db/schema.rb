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

ActiveRecord::Schema.define(version: 0) do

  create_table "comments", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "doctor_id", null: false
    t.string "content", limit: 250, null: false
    t.integer "rating", null: false
    t.integer "user_id", null: false
    t.integer "hide", default: 0, null: false
    t.index ["doctor_id"], name: "doctor_idFK"
  end

  create_table "doctors", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.integer "year", null: false
    t.string "speciality", limit: 50, null: false
    t.string "image", limit: 250, null: false
    t.float "rating", default: 0.0, null: false
    t.integer "nr_comms", default: 0, null: false
  end

  create_table "medical_units", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.string "location", limit: 50, null: false
    t.string "speciality", limit: 20, null: false
    t.string "image", limit: 250, null: false
  end

  create_table "unit_doctors", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "id_unit", null: false
    t.integer "id_doctor", null: false
    t.index ["id_doctor"], name: "id_docFK"
    t.index ["id_unit"], name: "id_unitFK"
  end

  create_table "user_details", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "id_user", null: false
    t.string "name", limit: 50, null: false
    t.string "problem", limit: 200, null: false
    t.string "image", limit: 250, default: "/images/login.png", null: false
    t.index ["id_user"], name: "id_user"
  end

  create_table "users", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "email", limit: 50, null: false
    t.string "password", limit: 50, null: false
    t.string "admin", limit: 3, null: false
  end

  add_foreign_key "comments", "doctors", name: "doctor_idFK", on_update: :cascade, on_delete: :cascade
  add_foreign_key "unit_doctors", "doctors", column: "id_doctor", name: "id_docFK", on_update: :cascade, on_delete: :cascade
  add_foreign_key "unit_doctors", "medical_units", column: "id_unit", name: "id_unitFK", on_update: :cascade, on_delete: :cascade
  add_foreign_key "user_details", "users", column: "id_user", name: "id_userFK", on_update: :cascade, on_delete: :cascade
end
