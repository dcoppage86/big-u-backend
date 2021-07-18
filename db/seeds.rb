# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
dakota = User.create(first_name: "Dakota", last_name: "Coppage", childs_name: "Fynleigh", username: "dcoppage86", email: "dakotakcoppage@me.com", password: "password")

dakota.daily_entries = DailyEntry.create([{ title: "Today was a good day...", content: "Today we did stuff that didnt drive me completely insane", user_id: 1 }])