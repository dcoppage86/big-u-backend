# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
dakota = User.create(first_name: "Dakota", last_name: "Coppage", childs_name: "Fynleigh", username: "dcoppage86", email: "dakotakcoppage@me.com", password: "password", collection_id: 1)

# dakota.daily_entries = DailyEntry.create([
#     { title: "Today was a good day...", content: "Today we did stuff that didnt drive me completely insane", user_id: 1 }
# ])

# comments = Comment.create([
#     {title: "This book really helped us", content: "Weve been reading this ever since our oldest was diagnosed with ASD, it has helped us navigate immensely.", user_id: 1}
# ])

# books = Book.create([
#     {title: "My Brother Charlie", author: "Holly Robinson Peete", book_url: "https://www.amazon.com/Brother-Charlie-Holly-Robinson-Peete/dp/0545094666", image_url: "https://images-na.ssl-images-amazon.com/images/I/81niArxSMbL.jpg", category_id: 2, user_id: 1},
#     {title: "Parenting a Child with Autism Spectrum Disorder", author: "Albert Knapp", book_url: "https://www.amazon.com/Parenting-Child-Autism-Spectrum-Disorder/dp/1646113624/ref=sr_1_1_sspa?crid=HU3LWTZHA2K4&dchild=1&keywords=autism+parenting+book&qid=1626645485&s=books&sprefix=autism+parenting%2Cstripbooks%2C196&sr=1-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEzRDU4MVBXV1ZaTlJZJmVuY3J5cHRlZElkPUEwMDc0MTQ0MURaWjlJOU5aQUU5SSZlbmNyeXB0ZWRBZElkPUEwNDY3NDgzMVBLVFQwS1k2SU1OViZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU=", image_url: "https://images-na.ssl-images-amazon.com/images/I/41WJM9pjtfS._SX331_BO1,204,203,200_.jpg", category_id: 3, user_id: 1},
#     {title: "I Think I Might Be Autistic", author: "Cynthia Kim", book_url: "https://www.amazon.com/Think-Might-Autistic-Diagnosis-Self-Discovery/dp/0989597113/ref=sr_1_4?dchild=1&keywords=adult+with+autism+book&qid=1626645617&s=books&sr=1-4", image_url: "https://images-na.ssl-images-amazon.com/images/I/51f-ImDB9tL._SX311_BO1,204,203,200_.jpg", category_id: 1, user_id: 1}
# ])

# # libraries = Library.create([
# #     {title: "Resources"}
# # ])

# categories = Category.create([
#     {name: "adult"},
#     {name: "children"},
#     {name: "parenting"}
# ])