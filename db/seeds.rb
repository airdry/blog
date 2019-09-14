# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'admin', password: '123456789', email: 'admin@mail.com', admin: 'true')
User.create(username: 'user', password: '123456789', email: 'user@mail.com', admin: 'false')
User.create(username: 'current', password: '123456789', email: 'current@mail.com', admin: 'false')
