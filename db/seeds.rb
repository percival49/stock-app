# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(email: 'admin@email.com', password: 123456, first_name: 'AFirst', last_name: 'ALast', is_admin: true)

User.create(email: 'test1@email.com', password: 123456, first_name: 'First', last_name: 'Last')
User.create(email: 'test2@email.com', password: 123456, first_name: 'First', last_name: 'Last')
User.create(email: 'test3@email.com', password: 123456, first_name: 'First', last_name: 'Last')
User.create(email: 'test4@email.com', password: 123456, first_name: 'First', last_name: 'Last')
User.create(email: 'test5@email.com', password: 123456, first_name: 'First', last_name: 'Last')