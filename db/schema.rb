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

ActiveRecord::Schema.define(version: 20161216023601) do

  create_table "categories", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "report_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_categories_on_report_id"
  end

  create_table "reports", force: :cascade do |t|
    t.string   "nombre"
    t.string   "pdte_mpal"
    t.string   "dip_local"
    t.string   "dip_federal"
    t.datetime "renovacion_cdm"
    t.text     "situacion_municipio"
    t.text     "situacion_cdm"
    t.text     "temas_rednion"
    t.string   "image"
    t.text     "observaciones"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "category_id",         default: 1
    t.index ["category_id"], name: "index_reports_on_category_id"
  end

end
