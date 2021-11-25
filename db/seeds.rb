# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

Dog.destroy_all
puts 'All the dogs were destroyed'
User.destroy_all

puts 'All registered users have been destroyed'
user1 = User.create(nickname: 'user1', email: 'user1@email.com', password: '123123')
user2 = User.create(nickname: 'user2', email: 'user2@email.com', password: '123123')
user3 = User.create(nickname: 'user3', email: 'user3@email.com', password: '123123')
user4 = User.create(nickname: 'user4', email: 'user4@email.com', password: '123123')
user5 = User.create(nickname: 'user5', email: 'user5@email.com', password: '123123')

dog = Dog.new(name: 'Lola', breed: 'husky', gender: 'female', pedigree: true, address: 'Via Col Di lana 6, Milan',
              user: user1, matchable: true, birthdate: '2021/09/17')
file = URI.open('https://source.unsplash.com/626x750/?dog')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Lucky', breed: 'husky', gender: 'male', pedigree: true, address: 'Viale Brenta 10, Milan',
              user: user2, matchable: true, birthdate: '2021/08/17')
file = URI.open('https://source.unsplash.com/626x750/?dog')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Charlie', breed: 'husky', gender: 'male', pedigree: true, address: 'Corso Lodi 15, Milan',
              user: user3, matchable: false, birthdate: '2021/07/17')
file = URI.open('https://source.unsplash.com/626x750/?dog')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Leo', breed: 'husky', gender: 'male', pedigree: true, address: 'Via Eugenio Vania 2, Milan',
              user: user4, matchable: true, birthdate: '2021/05/17')
file = URI.open('https://source.unsplash.com/626x750/?dog')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!
file = URI.open('https://source.unsplash.com/626x750/?dog')

dog = Dog.new(name: 'Oliver', breed: 'husky', gender: 'male', pedigree: true, address: 'Piazzale Cantore 4, Milan',
              user: user5, matchable: true, birthdate: '2021/06/17')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!
