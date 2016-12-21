

ActiveRecord::Schema.define(version: 20161201194428) do

  create_table "blogs", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.string   "author"
    t.text     "message"
    t.integer  "post_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["post_id"], name: "index_messages_on_post_id"
  add_index "messages", ["user_id"], name: "index_messages_on_user_id"

  create_table "owners", force: true do |t|
    t.integer  "user_id"
    t.integer  "blog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "owners", ["blog_id"], name: "index_owners_on_blog_id"
  add_index "owners", ["user_id"], name: "index_owners_on_user_id"

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "blog_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["blog_id"], name: "index_posts_on_blog_id"
  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end