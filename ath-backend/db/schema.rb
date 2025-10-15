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

ActiveRecord::Schema[8.0].define(version: 2025_10_15_132524) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facts", force: :cascade do |t|
    t.bigint "specie_id", null: false
    t.bigint "text_content_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["specie_id"], name: "index_facts_on_specie_id"
    t.index ["text_content_id"], name: "index_facts_on_text_content_id"
  end

  create_table "families", force: :cascade do |t|
    t.string "name"
    t.bigint "text_content_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["text_content_id"], name: "index_families_on_text_content_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "licenses", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.text "url"
    t.boolean "requires_attribution"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.bigint "text_content_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["text_content_id"], name: "index_orders_on_text_content_id"
  end

  create_table "recordings", force: :cascade do |t|
    t.string "sound_url"
    t.string "spectrogram_url"
    t.integer "length"
    t.string "quality"
    t.text "comment"
    t.text "attribution"
    t.bigint "license_id", null: false
    t.bigint "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "uploader_id"
    t.index ["country_id"], name: "index_recordings_on_country_id"
    t.index ["license_id"], name: "index_recordings_on_license_id"
    t.index ["uploader_id"], name: "index_recordings_on_uploader_id"
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.bigint "text_content_id", null: false
    t.bigint "order_id", null: false
    t.bigint "family_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["family_id"], name: "index_species_on_family_id"
    t.index ["order_id"], name: "index_species_on_order_id"
    t.index ["text_content_id"], name: "index_species_on_text_content_id"
  end

  create_table "species_rarities", force: :cascade do |t|
    t.bigint "country_id", null: false
    t.bigint "species_id", null: false
    t.string "rarity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_species_rarities_on_country_id"
    t.index ["species_id"], name: "index_species_rarities_on_species_id"
  end

  create_table "text_contents", force: :cascade do |t|
    t.text "original_text"
    t.bigint "language_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_text_contents_on_language_id"
  end

  create_table "translations", force: :cascade do |t|
    t.text "translated_text"
    t.bigint "text_content_id", null: false
    t.bigint "language_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_translations_on_language_id"
    t.index ["text_content_id"], name: "index_translations_on_text_content_id"
  end

  add_foreign_key "facts", "species", column: "specie_id"
  add_foreign_key "facts", "text_contents"
  add_foreign_key "families", "text_contents"
  add_foreign_key "orders", "text_contents"
  add_foreign_key "recordings", "admin_users", column: "uploader_id"
  add_foreign_key "recordings", "countries"
  add_foreign_key "recordings", "licenses"
  add_foreign_key "species", "families"
  add_foreign_key "species", "orders"
  add_foreign_key "species", "text_contents"
  add_foreign_key "species_rarities", "countries"
  add_foreign_key "species_rarities", "species"
  add_foreign_key "text_contents", "languages"
  add_foreign_key "translations", "languages"
  add_foreign_key "translations", "text_contents"
end
