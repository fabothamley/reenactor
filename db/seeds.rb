# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users= users.create!({
  email: "testadmin@example.com",
  encrypted_password: "123456" ,
  admin: true
})
#    t.string   "email",                  default: "", null: false
#    t.string   "encrypted_password",     default: "", null: false
#    t.string   "reset_password_token"
#    t.datetime "reset_password_sent_at"
#    t.datetime "remember_created_at"
#    t.datetime "created_at",                          null: false
#    t.datetime "updated_at",                          null: false
#    t.boolean  "admin"
#    t.index ["email"], name: "index_users_on_email", unique: true
#    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true