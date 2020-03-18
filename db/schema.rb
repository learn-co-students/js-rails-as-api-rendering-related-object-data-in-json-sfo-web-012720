ActiveRecord::Schema.define(version: 2020_03_18_171150) do

  create_table "birds", force: :cascade do |t|
    t.string "name"
    t.string "species"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sightings", force: :cascade do |t|
    t.integer "bird_id"
    t.integer "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bird_id"], name: "index_sightings_on_bird_id"
    t.index ["location_id"], name: "index_sightings_on_location_id"
  end

end
