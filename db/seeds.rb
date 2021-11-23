# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dog.destroy_all
User.destroy_all
puts "All registered users have been destroyed"

user2 = User.create(nickname: "user2", email: "user@email.com", password: "123123")
User.all
puts "#{user2} has been created"

Dog.create!(name: 'Lola', breed: 'husky', gender: 'female', pedigree: true, address: 'Via Col Di lana 6, Milan',
            user: user2, matchable: true, birthdate: '2017/04/14')
