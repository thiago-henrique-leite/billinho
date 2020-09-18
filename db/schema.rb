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

ActiveRecord::Schema.define(version: 2020_09_18_005201) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "institutions", force: :cascade do |t|
    t.text "nome", null: false
    t.text "cnpj"
    t.text "tipo", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cnpj"], nome: "index_institutions_on_cnpj", unique: true
    t.index ["nome"], nome: "index_institutions_on_nome", unique: true
  end

  create_table "students", force: :cascade do |t|
    t.text "nome"
    t.text "cpf"
    t.date "data_nasc"
    t.integer "phone"
    t.text "genero"
    t.text "meio_pagamento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cpf"], nome: "index_students_on_cpf", unique: true
    t.index ["nome"], nome: "index_students_on_nome", unique: true
  end

end
