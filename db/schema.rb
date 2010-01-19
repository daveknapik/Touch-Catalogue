# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100118095808) do

  create_table "artists", :force => true do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "releases", :force => true do |t|
    t.string   "catalogue_number"
    t.string   "title"
    t.string   "duration"
    t.text     "track_listing"
    t.date     "release_date"
    t.string   "cover_art_url"
    t.string   "release_url"
    t.string   "itunes_url"
    t.string   "mp3_sample_url"
    t.text     "description"
    t.text     "reviews"
    t.integer  "artist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
