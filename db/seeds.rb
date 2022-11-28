# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(email: "gui@lewagon", password: "123123")
User.create!(email: "student@lewagon", password: "123123")

Slot.create!(user: User.first, start_time: Time.now, end_time: (Time.now + 1))
