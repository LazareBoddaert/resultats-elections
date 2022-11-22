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

ActiveRecord::Schema[7.0].define(version: 2022_11_22_101642) do
  create_table "candidats", force: :cascade do |t|
    t.string "nom"
    t.integer "formation_politique_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["formation_politique_id"], name: "index_candidats_on_formation_politique_id"
  end

  create_table "communes", force: :cascade do |t|
    t.string "nom"
    t.integer "code_postal"
    t.integer "departement_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departement_id"], name: "index_communes_on_departement_id"
  end

  create_table "departements", force: :cascade do |t|
    t.string "nom"
    t.string "numero"
    t.integer "region_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_departements_on_region_id"
  end

  create_table "formation_politiques", force: :cascade do |t|
    t.string "nom"
    t.string "positionnement_politique"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resultats", force: :cascade do |t|
    t.float "score_du_candidat"
    t.integer "scrutin_id", null: false
    t.integer "candidat_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["candidat_id"], name: "index_resultats_on_candidat_id"
    t.index ["scrutin_id"], name: "index_resultats_on_scrutin_id"
  end

  create_table "scrutins", force: :cascade do |t|
    t.integer "annee"
    t.integer "tour"
    t.float "nombre_inscrit"
    t.float "abstention"
    t.float "nombre_votant"
    t.float "blancs"
    t.float "nuls"
    t.float "nombre_exprime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer "scrutin_id", null: false
    t.integer "commune_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commune_id"], name: "index_votes_on_commune_id"
    t.index ["scrutin_id"], name: "index_votes_on_scrutin_id"
  end

  add_foreign_key "candidats", "formation_politiques"
  add_foreign_key "communes", "departements"
  add_foreign_key "departements", "regions"
  add_foreign_key "resultats", "candidats"
  add_foreign_key "resultats", "scrutins"
  add_foreign_key "votes", "communes"
  add_foreign_key "votes", "scrutins"
end
