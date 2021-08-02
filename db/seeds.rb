# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.all.each do |user|
    user.books.create([
        {book_title: "My Brother Charlie", book_author: "Holly Robinson Peete", book_url: "https://www.amazon.com/Brother-Charlie-Holly-Robinson-Peete/dp/0545094666", image_url: "https://images-na.ssl-images-amazon.com/images/I/81niArxSMbL.jpg"},
        {book_title: "Parenting a Child with Autism Spectrum Disorder", book_author: "Albert Knapp", book_url: "https://www.amazon.com/Parenting-Child-Autism-Spectrum-Disorder/dp/1646113624/ref=sr_1_1_sspa?crid=HU3LWTZHA2K4&dchild=1&keywords=autism+parenting+book&qid=1626645485&s=books&sprefix=autism+parenting%2Cstripbooks%2C196&sr=1-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEzRDU4MVBXV1ZaTlJZJmVuY3J5cHRlZElkPUEwMDc0MTQ0MURaWjlJOU5aQUU5SSZlbmNyeXB0ZWRBZElkPUEwNDY3NDgzMVBLVFQwS1k2SU1OViZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU=", image_url: "https://images-na.ssl-images-amazon.com/images/I/41WJM9pjtfS._SX331_BO1,204,203,200_.jpg"},
        {book_title: "I Think I Might Be Autistic", book_author: "Cynthia Kim", book_url: "https://www.amazon.com/Think-Might-Autistic-Diagnosis-Self-Discovery/dp/0989597113/ref=sr_1_4?dchild=1&keywords=adult+with+autism+book&qid=1626645617&s=books&sr=1-4", image_url: "https://images-na.ssl-images-amazon.com/images/I/51f-ImDB9tL._SX311_BO1,204,203,200_.jpg"}
        ])
end

