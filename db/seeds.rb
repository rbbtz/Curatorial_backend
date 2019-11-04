# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#start page - end page
# Artwork.get_harvard_images(1, 10)

User.create!(first_name: "Test", last_name: "Testing", email: "e@e.com", password: "e", password_confirmation: "e", biography: "I am a test", public: true)