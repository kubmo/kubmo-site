ActiveRecord::Schema.define(:version => 20131104231719) do

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0, :null => false
    t.integer  "attempts",   :default => 0, :null => false
    t.text     "handler",                   :null => false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "donations", :force => true do |t|
    t.integer  "amount"
    t.string   "email"
    t.string   "transaction_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "girl_name"
  end
  enable_extension "plpgsql"

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "donations", force: true do |t|
    t.integer  "amount"
    t.string   "email"
    t.string   "transaction_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "girl_name"
  end

  create_table "entrepreneur_applications", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "city"
    t.integer  "number"
    t.string   "email"
    t.string   "employed"
    t.string   "internet"
    t.string   "phone_type"
    t.string   "picture"
    t.string   "availability"
    t.text     "passion"
    t.text     "business_idea"
    t.text     "sustainable"
    t.text     "why"
    t.text     "impact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mentors", :force => true do |t|
    t.string   "name"
    t.string   "occupation"
    t.string   "email"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "why"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end
end
