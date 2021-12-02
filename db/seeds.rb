# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

Dog.delete_all
puts 'All the dogs were destroyed'
User.delete_all

puts 'All registered users have been destroyed'
user1 = User.create(nickname: 'user1', email: 'user1@email.com', password: '123123')
user2 = User.create(nickname: 'user2', email: 'user2@email.com', password: '123123')
user3 = User.create(nickname: 'user3', email: 'user3@email.com', password: '123123')
user4 = User.create(nickname: 'user4', email: 'user4@email.com', password: '123123')
user5 = User.create(nickname: 'user5', email: 'user5@email.com', password: '123123')
user6 = User.create(nickname: 'user6', email: 'user6@email.com', password: '123123')


# user1 (spaniel-cocker husky female)
dog = Dog.new(name: 'Lily', breed: 'spaniel-cocker', gender: 'female', pedigree: true, address: 'Via Col Di lana 6, Milan',
              user: user1, matchable: true, birthdate: '2021/09/17')
file = URI.open('https://images.unsplash.com/photo-1559190394-df5a28aab5c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Fiona', breed: 'husky', gender: 'female', pedigree: true, address: 'Via FILIPPO ABBIATI 6, Milan',
              user: user1, matchable: true, birthdate: '2020/08/23')
file = URI.open('https://images.unsplash.com/photo-1590419690008-905895e8fe0d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

# user2 (spaniel-cocker husky male)
dog = Dog.new(name: 'Toby', breed: 'spaniel-cocker', gender: 'male', pedigree: true, address: 'Via UGO FOSCOLO 5, Milan',
              user: user2, matchable: true, birthdate: '2020/05/10')
file = URI.open('https://images.unsplash.com/photo-1597666994536-e299696c6a61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Dax', breed: 'husky', gender: 'male', pedigree: true, address: 'Via CARADOSSO 6, Milan',
              user: user2, matchable: true, birthdate: '2021/05/06')
file = URI.open('https://images.unsplash.com/photo-1575904210356-3075648bafb4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

# user3
# 10 spaniel-cocker FEMALE
dog = Dog.new(name: 'Rosie', breed: 'spaniel-cocker', gender: 'female', pedigree: true, address: 'Viale Brenta 10, Milan',
              user: user3, matchable: true, birthdate: '2020/08/16')
file = URI.open('https://images.unsplash.com/photo-1621543516543-1a60beceae95?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Astrid', breed: 'spaniel-cocker', gender: 'female', pedigree: true, address: 'Corso Lodi 15, Milan',
              user: user4, matchable: true, birthdate: '2020/07/15')
file = URI.open('https://images.unsplash.com/photo-1615042986817-bcfb63167cb8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Iris', breed: 'spaniel-cocker', gender: 'female', pedigree: true, address: 'Via Eugenio Vania 2, Milan',
              user: user5, matchable: true, birthdate: '2021/05/14')
file = URI.open('https://images.unsplash.com/photo-1615042986485-db725383ff70?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Trix', breed: 'spaniel-cocker', gender: 'female', pedigree: true, address: 'Piazzale Cantore 4, Milan',
              user: user6, matchable: true, birthdate: '2020/06/13')
file = URI.open('https://images.unsplash.com/photo-1532592333381-a141e3f197c9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Bella', breed: 'spaniel-cocker', gender: 'female', pedigree: true, address: 'Via CASCINA CORBA, Milan',
              user: user3, matchable: true, birthdate: '2020/05/13')
file = URI.open('https://images.unsplash.com/photo-1615042987670-679845d7f890?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Alice', breed: 'spaniel-cocker', gender: 'female', pedigree: true, address: 'Via Delle GARDENIE, Milan',
              user: user4, matchable: true, birthdate: '2020/04/10')
file = URI.open('https://images.unsplash.com/photo-1607532445402-f4efadaf2c98?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2072&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Tanya', breed: 'spaniel-cocker', gender: 'female', pedigree: true, address: 'Via TONEZZA, Milan',
              user: user5, matchable: true, birthdate: '2020/03/02')
file = URI.open('https://images.unsplash.com/photo-1615042986485-db725383ff70?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!


dog = Dog.new(name: 'Kiki', breed: 'spaniel-cocker', gender: 'female', pedigree: true, address: 'Via AGRIGENTO, Milan',
              user: user6, matchable: true, birthdate: '2020/07/05')
file = URI.open('https://images.unsplash.com/photo-1504826260979-242151ee45b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Lora', breed: 'spaniel-cocker', gender: 'female', pedigree: true, address: 'Via CELIO 4, Milan',
              user: user3, matchable: true, birthdate: '2020/12/13')
file = URI.open('https://images.unsplash.com/photo-1588943211346-0908a1fb0b01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!


dog = Dog.new(name: 'Erin', breed: 'spaniel-cocker', gender: 'female', pedigree: true, address: 'Via Dei FRANGIPANI, Milan',
              user: user4, matchable: true, birthdate: '2020/11/13')
file = URI.open('https://images.unsplash.com/photo-1600513396935-bb8623508e44?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!


# #10 spaniel-cocker MALE
dog = Dog.new(name: 'Balto', breed: 'spaniel-cocker', gender: 'male', pedigree: true, address: 'Via Del GALLO 23, Milan',
              user: user5, matchable: true, birthdate: '2021/03/12')
file = URI.open('https://images.unsplash.com/photo-1585698708041-af48d48f8c0d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1744&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Flash', breed: 'spaniel-cocker', gender: 'male', pedigree: true, address: 'Via LANDOLFO 7, Milan',
              user: user6, matchable: true, birthdate: '2020/02/11')
file = URI.open('https://images.unsplash.com/photo-1615315453342-53d9b799d54e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1063&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Fred', breed: 'spaniel-cocker', gender: 'male', pedigree: true, address: 'Via COL MOSCHIN 6, Milan',
              user: user3, matchable: true, birthdate: '2021/07/09')
file = URI.open('https://images.unsplash.com/photo-1548031611-745a4c0e6c93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Robby', breed: 'spaniel-cocker', gender: 'male', pedigree: true, address: 'Via BERNARDO ZAMAGNA 2, Milan',
              user: user4, matchable: true, birthdate: '2020/04/08')
file = URI.open('https://images.unsplash.com/photo-1610231340708-d1c0902a4bd5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Ronnie', breed: 'spaniel-cocker', gender: 'male', pedigree: true, address: 'Via LOVERE, Milan',
              user: user5, matchable: true, birthdate: '2020/04/04')
file = URI.open('https://images.unsplash.com/photo-1591306875868-10df05199cd4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Eres', breed: 'spaniel-cocker', gender: 'male', pedigree: true, address: 'Via PERGINE 2, Milan',
              user: user6, matchable: true, birthdate: '2021/09/09')
file = URI.open('https://images.unsplash.com/photo-1587463272361-565200f82b33?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Wisky', breed: 'spaniel-cocker', gender: 'male', pedigree: true, address: 'Via ALDO CARPI, Milan',
              user: user3, matchable: true, birthdate: '2021/07/12')
file = URI.open('https://images.unsplash.com/photo-1550654033-19880ebea343?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1673&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Willow', breed: 'spaniel-cocker', gender: 'male', pedigree: true, address: 'Via BISANZIO 2, Milan',
              user: user4, matchable: true, birthdate: '2020/02/25')
file = URI.open('https://images.unsplash.com/photo-1592146463560-a974927bcf9e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=681&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Rio', breed: 'spaniel-cocker', gender: 'male', pedigree: true, address: 'Via GALLARATE 2, Milan',
              user: user5, matchable: true, birthdate: '2021/03/29')
file = URI.open('https://images.unsplash.com/photo-1630421535202-1ed447487a72?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=776&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Loris', breed: 'spaniel-cocker', gender: 'male', pedigree: true, address: 'Via MARIO BORSA 2, Milan',
              user: user6, matchable: true, birthdate: '2020/12/25')
file = URI.open('https://images.unsplash.com/photo-1606069113895-d305e6ea3a78?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

# #10 husky FEMALE
dog = Dog.new(name: 'Peggie', breed: 'husky', gender: 'female', pedigree: true, address: 'Via CARLO MARATTA 6, Milan',
              user: user3, matchable: true, birthdate: '2021/09/01')
file = URI.open('https://images.unsplash.com/photo-1547407139-3c921a66005c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Trilly', breed: 'husky', gender: 'female', pedigree: true, address: 'Via CAPPUCCINI 6, Milan',
              user: user4, matchable: true, birthdate: '2021/02/17')
file = URI.open('https://images.unsplash.com/photo-1561297108-a47d55d96a19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Dafne', breed: 'husky', gender: 'female', pedigree: true, address: 'Via LIVORNO 6, Milan',
              user: user5, matchable: true, birthdate: '2020/04/29')
file = URI.open('https://images.unsplash.com/photo-1578860549169-219f5e786c1b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Sophie', breed: 'husky', gender: 'female', pedigree: true, address: 'Via CARADOSSO 6, Milan',
              user: user6, matchable: true, birthdate: '2021/06/06')
file = URI.open('https://images.unsplash.com/photo-1601299686618-d32be8449300?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Sole', breed: 'husky', gender: 'female', pedigree: true, address: 'Via ALDO MORO 6, Milan',
              user: user3, matchable: true, birthdate: '2021/03/05')
file = URI.open('https://images.unsplash.com/photo-1540411003967-af56b79be677?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Ginny', breed: 'husky', gender: 'female', pedigree: true, address: 'Via CESARE VIGNATI, Milan',
              user: user4, matchable: true, birthdate: '2020/09/30')
file = URI.open('https://images.unsplash.com/photo-1543556153-5e59781a98dc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=776&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Venus', breed: 'husky', gender: 'female', pedigree: true, address: 'Via FLAVIA, Milan',
              user: user5, matchable: true, birthdate: '2020/04/21')
file = URI.open('https://images.unsplash.com/photo-1605568427561-40dd23c2acea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Polly', breed: 'husky', gender: 'female', pedigree: true, address: 'Via PESARO, Milan',
              user: user6, matchable: true, birthdate: '2021/08/11')
file = URI.open('https://images.unsplash.com/photo-1577920613552-1de9821340cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Andromeda', breed: 'husky', gender: 'female', pedigree: true, address: 'Via ANCONA, Milan',
              user: user3, matchable: true, birthdate: '2020/08/06')
file = URI.open('https://images.unsplash.com/photo-1577915689826-f6add3fa3f98?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Elly', breed: 'husky', gender: 'female', pedigree: true, address: 'Via CASE ROTTE 5, Milan',
              user: user4, matchable: true, birthdate: '2020/06/08')
file = URI.open('https://images.unsplash.com/photo-1577207989354-f076506b43e8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1082&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

# #10 husky MALE
dog = Dog.new(name: 'Boris', breed: 'husky', gender: 'male', pedigree: true, address: 'Via CARADOSSO 6, Milan',
              user: user5, matchable: true, birthdate: '2020/08/07')
file = URI.open('https://images.unsplash.com/photo-1616567214738-22fc0c6332b3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Rufy', breed: 'husky', gender: 'male', pedigree: true, address: 'Via CARADOSSO 6, Milan',
              user: user6, matchable: true, birthdate: '2021/05/05')
file = URI.open('https://images.unsplash.com/photo-1613228554660-ce294bfb432a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Zoro', breed: 'husky', gender: 'male', pedigree: true, address: 'Via CARADOSSO 6, Milan',
              user: user3, matchable: true, birthdate: '2020/03/06')
file = URI.open('https://images.unsplash.com/photo-1511090289856-9ca50546f1fb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Sanji', breed: 'husky', gender: 'male', pedigree: true, address: 'Via CARADOSSO 6, Milan',
              user: user4, matchable: true, birthdate: '2020/06/01')
file = URI.open('https://images.unsplash.com/photo-1590925888274-723778397410?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Neji', breed: 'husky', gender: 'male', pedigree: true, address: 'Via MILAZZO, Milan',
              user: user5, matchable: true, birthdate: '2021/10/01')
file = URI.open('https://images.unsplash.com/photo-1578158334851-363fe6d16531?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Lampo', breed: 'husky', gender: 'male', pedigree: true, address: 'Via SAN FERMO, Milan',
              user: user6, matchable: true, birthdate: '2021/10/01')
file = URI.open('https://images.unsplash.com/photo-1616568799337-3d7e0ab9caf8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!


dog = Dog.new(name: 'Ettore', breed: 'husky', gender: 'male', pedigree: true, address: 'Via TOMMASO GROSSI, Milan',
              user: user3, matchable: true, birthdate: '2020/11/01')
file = URI.open('https://images.unsplash.com/photo-1597262945345-953492d522dd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Benji', breed: 'husky', gender: 'male', pedigree: true, address: 'Via CERVA, Milan',
              user: user4, matchable: true, birthdate: '2020/07/01')
file = URI.open('https://images.unsplash.com/photo-1551926273-f1e14a594f2e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Olly', breed: 'husky', gender: 'male', pedigree: true, address: 'Via GUBBIO 6, Milan',
              user: user5, matchable: true, birthdate: '2021/04/02')
file = URI.open('https://images.unsplash.com/photo-1536572743959-90cb37883a36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

dog = Dog.new(name: 'Pedro', breed: 'husky', gender: 'male', pedigree: true, address: 'Via PASSIONE, Milan',
              user: user6, matchable: true, birthdate: '2021/01/01')
file = URI.open('https://images.unsplash.com/photo-1489924034176-2e678c29d4c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80')
dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
dog.save!

#-------------------------------------------
# # 5 Golden Retriever FEMALE
# dog = Dog.new(name: 'Lucy', breed: 'Golden Retriever', gender: 'female', pedigree: true, address: 'Via ALESSANDRO PAOLI 6, Milan',
#               user: user3, matchable: true, birthdate: '2020/06/04')
# file = URI.open('https://images.unsplash.com/photo-1602241628512-459cdd3234fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Nami', breed: 'Golden Retriever', gender: 'female', pedigree: true, address: 'Via LECCO 6, Milan',
#               user: user5, matchable: true, birthdate: '2021/04/06')
# file = URI.open('https://images.unsplash.com/photo-1523480717984-24cba35ae1ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Minnie', breed: 'Golden Retriever', gender: 'female', pedigree: true, address: 'Via Delle LEGHE 6, Milan',
#               user: user7, matchable: true, birthdate: '2021/02/06')
# file = URI.open('https://images.unsplash.com/photo-1561240056-6cb887e01155?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Rue', breed: 'Golden Retriever', gender: 'female', pedigree: true, address: 'Via PONTE VECCHIO 6, Milan',
#               user: user2, matchable: true, birthdate: '2020/08/07')
# file = URI.open('https://images.unsplash.com/photo-1577106581388-0a2cebac24ed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=776&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Giada', breed: 'Golden Retriever', gender: 'female', pedigree: true, address: 'Via NORICO 6, Milan',
#               user: user8, matchable: true, birthdate: '2020/12/25')
# file = URI.open('https://images.unsplash.com/photo-1633722715463-d30f4f325e24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!
# # 5 Golden Retriever MALE
# dog = Dog.new(name: 'Zoro', breed: 'Golden Retriever', gender: 'male', pedigree: true, address: 'Via MONTE OLIVETO 6, Milan',
#               user: user4, matchable: true, birthdate: '2020/10/10')
# file = URI.open('https://images.unsplash.com/photo-1590722920199-2a4a296d59bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Naruto', breed: 'Golden Retriever', gender: 'male', pedigree: true, address: 'Via BREGUZZO 6, Milan',
#               user: user6, matchable: true, birthdate: '2020/12/09')
# file = URI.open('https://images.unsplash.com/photo-1602352041504-a141b6d9d3de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Jiraya', breed: 'Golden Retriever', gender: 'male', pedigree: true, address: 'Via FONZASO 6, Milan',
#               user: user9, matchable: true, birthdate: '2020/09/12')
# file = URI.open('https://images.unsplash.com/photo-1591200687582-77abaf45de25?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Sasuke', breed: 'Golden Retriever', gender: 'male', pedigree: true, address: 'Via CAIO MARIO 6, Milan',
#               user: user1, matchable: true, birthdate: '2020/04/09')
# file = URI.open('https://images.unsplash.com/photo-1508609540374-67d1601ba520?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=770&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Kakashi', breed: 'Golden Retriever', gender: 'male', pedigree: true, address: 'Via ALBENGA 6, Milan',
#               user: user10, matchable: true, birthdate: '2020/04/04')
# file = URI.open('https://images.unsplash.com/photo-1513549054-cb3611a004fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!
# # 5 Australian Shepard FEMALE
# dog = Dog.new(name: 'Brie', breed: 'Australian Shepard', gender: 'female', pedigree: true, address: 'Via BIGLI 6, Milan',
#               user: user3, matchable: true, birthdate: '2020/01/07')
# file = URI.open('https://images.unsplash.com/photo-1613750944954-bcb66ebc8491?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Rose', breed: 'Australian Shepard', gender: 'female', pedigree: true, address: 'Via CUSANI 6, Milan',
#               user: user5, matchable: true, birthdate: '2020/02/07')
# file = URI.open('https://images.unsplash.com/photo-1558712168-c0415bdb60d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Sakura', breed: 'Australian Shepard', gender: 'female', pedigree: true, address: 'Via ALESSANDRIA 6, Milan',
#               user: user7, matchable: true, birthdate: '2020/10/01')
# file = URI.open('https://images.unsplash.com/photo-1530126483408-aa533e55bdb2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=930&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Inu', breed: 'Australian Shepard', gender: 'female', pedigree: true, address: 'Via ELBA 6, Milan',
#               user: user8, matchable: true, birthdate: '2020/11/11')
# file = URI.open('https://images.unsplash.com/photo-1621010312435-a9d358e69623?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Sadie', breed: 'Australian Shepard', gender: 'female', pedigree: true, address: 'Via ALASSIO 6, Milan',
#               user: user9, matchable: true, birthdate: '2020/06/12')
# file = URI.open('https://images.unsplash.com/photo-1613737662551-4e5c021bc02c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!
# # 5 Australian Shepard MALE
# dog = Dog.new(name: 'Sanji', breed: 'Australian Shepard', gender: 'male', pedigree: true, address: 'Via ALASSIO 6, Milan',
#               user: user4, matchable: true, birthdate: '2020/11/12')
# file = URI.open('https://images.unsplash.com/photo-1613750946760-66c31d803eea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Ron', breed: 'Australian Shepard', gender: 'male', pedigree: true, address: 'Via ALASSIO 6, Milan',
#               user: user6, matchable: true, birthdate: '2020/11/12')
# file = URI.open('https://images.unsplash.com/photo-1624934061331-1c21741ff0ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1776&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Ned', breed: 'Australian Shepard', gender: 'male', pedigree: true, address: 'Via ALASSIO 6, Milan',
#               user: user10, matchable: true, birthdate: '2020/11/12')
# file = URI.open('https://images.unsplash.com/photo-1547112112-dcb2f3142a81?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Ash', breed: 'Australian Shepard', gender: 'male', pedigree: true, address: 'Via ALASSIO 6, Milan',
#               user: user9, matchable: true, birthdate: '2020/11/12')
# file = URI.open('https://images.unsplash.com/photo-1593173617403-95dbe9dfeafd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Holly', breed: 'Australian Shepard', gender: 'male', pedigree: true, address: 'Via ALASSIO 6, Milan',
#               user: user10, matchable: true, birthdate: '2020/11/12')
# file = URI.open('https://images.unsplash.com/photo-1563538484631-e3a974e4263f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=756&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!
# # 5 Shiba Inu FEMALE
# dog = Dog.new(name: 'Dolly', breed: 'Shiba Inu', gender: 'female', pedigree: true, address: 'Via DESIDERIO 6, Milan',
#               user: user3, matchable: true, birthdate: '2020/12/12')
# file = URI.open('https://images.unsplash.com/photo-1578133507770-a35cc3c786e6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Yukie', breed: 'Shiba Inu', gender: 'female', pedigree: true, address: 'Via VALLAZZE 6, Milan',
#               user: user5, matchable: true, birthdate: '2020/10/12')
# file = URI.open('https://images.unsplash.com/photo-1618911392268-9fc29c67fc69?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=770&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Vicky', breed: 'Shiba Inu', gender: 'female', pedigree: true, address: 'Via ALA 6, Milan',
#               user: user7, matchable: true, birthdate: '2020/09/12')
# file = URI.open('https://images.unsplash.com/photo-1613410180211-106788bd2d94?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Bibi', breed: 'Shiba Inu', gender: 'female', pedigree: true, address: 'Via ASMARA 6, Milan',
#               user: user8, matchable: true, birthdate: '2020/02/08')
# file = URI.open('https://images.unsplash.com/photo-1611610436339-496cfcf1c51f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Polly', breed: 'Shiba Inu', gender: 'female', pedigree: true, address: 'Via CHIETI 6, Milan',
#               user: user10, matchable: true, birthdate: '2020/03/01')
# file = URI.open('https://images.unsplash.com/photo-1618173745308-59d13ae72fce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=930&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!
# # 5 Shiba Inu MALE
# dog = Dog.new(name: 'Teddy', breed: 'Shiba Inu', gender: 'male', pedigree: true, address: 'Via GIACOMO SOLDATI 6, Milan',
#               user: user4, matchable: true, birthdate: '2020/03/03')
# file = URI.open('https://images.unsplash.com/photo-1610556009296-a3125836f118?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Ross', breed: 'Shiba Inu', gender: 'male', pedigree: true, address: 'Via CODIGORO 6, Milan',
#               user: user5, matchable: true, birthdate: '2020/04/12')
# file = URI.open('https://images.unsplash.com/photo-1596278833852-31cedd0b9cc0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Bobby', breed: 'Shiba Inu', gender: 'male', pedigree: true, address: 'Via GAREGNANO 6, Milan',
#               user: user6, matchable: true, birthdate: '2020/07/25')
# file = URI.open('https://images.unsplash.com/photo-1611448979620-a9f8ec24622f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Goku', breed: 'Shiba Inu', gender: 'male', pedigree: true, address: 'Via NORCIA 6, Milan',
#               user: user8, matchable: true, birthdate: '2020/06/30')
# file = URI.open('https://images.unsplash.com/photo-1578133709109-96ef373a6ca3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!

# dog = Dog.new(name: 'Pluto', breed: 'Shiba Inu', gender: 'male', pedigree: true, address: 'Via ATENE 6, Milan',
#               user: user9, matchable: true, birthdate: '2020/05/27')
# file = URI.open('https://images.unsplash.com/photo-1622532824228-e1dffce3f265?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
# dog.photo.attach(io: file, filename: "#{dog.name}.png", content_type: 'image/png')
# dog.save!
