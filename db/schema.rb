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

ActiveRecord::Schema.define(version: 2020_02_17_155549) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", primary_key: "bill_number", id: :integer, default: nil, force: :cascade do |t|
    t.integer "customer_id"
    t.date "bill_date"
    t.integer "subtotal"
    t.integer "tax"
    t.integer "total_value"
  end

  create_table "comentarios", id: false, force: :cascade do |t|
    t.serial "id", null: false
    t.datetime "fecha_y_hora"
    t.string "comentario", limit: 200
    t.string "contenido", limit: 100
    t.integer "post_id"
  end

  create_table "customers", id: :integer, default: nil, force: :cascade do |t|
    t.string "name", limit: 100
    t.string "rut", limit: 9
    t.string "address", limit: 100
  end

  create_table "owners", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
    t.index ["email"], name: "index_owners_on_email", unique: true
    t.index ["reset_password_token"], name: "index_owners_on_reset_password_token", unique: true
  end

  create_table "post", id: false, force: :cascade do |t|
    t.serial "id", null: false
    t.string "nombre", limit: 10
    t.date "fecha_creacion"
    t.string "contenido", limit: 100
    t.string "descripcion", limit: 100
    t.string "titulo", limit: 20
  end

end
