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

ActiveRecord::Schema[7.2].define(version: 2026_08_27_084323) do
  create_table "dealer_vendor_contacts", force: :cascade do |t|
    t.integer "dealer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "vendor_id"
    t.string "name"
    t.integer "user_id"
    t.index ["dealer_id"], name: "index_dealer_vendor_contacts_on_dealer_id"
    t.index ["user_id"], name: "index_dealer_vendor_contacts_on_user_id"
    t.index ["vendor_id"], name: "index_dealer_vendor_contacts_on_vendor_id"
  end

  create_table "dealers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dealers_to_vendors", force: :cascade do |t|
    t.integer "vendor_id", null: false
    t.integer "vendor_contact_id", null: false
    t.integer "dealer_id", null: false
    t.string "vendor_dealer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["dealer_id"], name: "index_dealers_to_vendors_on_dealer_id"
    t.index ["user_id"], name: "index_dealers_to_vendors_on_user_id"
    t.index ["vendor_contact_id"], name: "index_dealers_to_vendors_on_vendor_contact_id"
    t.index ["vendor_id"], name: "index_dealers_to_vendors_on_vendor_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "menu"
    t.string "sub_menu"
    t.string "task"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles_to_permissions", force: :cascade do |t|
    t.integer "role_id", null: false
    t.integer "permission_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permission_id"], name: "index_roles_to_permissions_on_permission_id"
    t.index ["role_id"], name: "index_roles_to_permissions_on_role_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "role_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_user_roles_on_role_id"
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vendor_contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.integer "vendor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_vendor_contacts_on_user_id"
    t.index ["vendor_id"], name: "index_vendor_contacts_on_vendor_id"
  end

  create_table "vendors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "dealer_vendor_contacts", "dealers"
  add_foreign_key "dealer_vendor_contacts", "users"
  add_foreign_key "dealer_vendor_contacts", "vendors"
  add_foreign_key "dealers_to_vendors", "dealers"
  add_foreign_key "dealers_to_vendors", "users"
  add_foreign_key "dealers_to_vendors", "vendor_contacts"
  add_foreign_key "dealers_to_vendors", "vendors"
  add_foreign_key "roles_to_permissions", "permissions"
  add_foreign_key "roles_to_permissions", "roles"
  add_foreign_key "user_roles", "roles"
  add_foreign_key "user_roles", "users"
  add_foreign_key "vendor_contacts", "users"
  add_foreign_key "vendor_contacts", "vendors"
end
