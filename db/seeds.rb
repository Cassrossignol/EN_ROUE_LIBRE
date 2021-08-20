# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup}.
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'Destroying users...'
User.destroy_all
puts 'Creating users...'
user1 = User.create!(email: 'romain.thiriot@gmail.com', password: "1234567")
user2 = User.create!(email: 'robin@gmail.com', password: "1234567")
puts "#{User.count} users created"

Transport.destroy_all

t1 = Transport.create!(transport_type: 'Vélo', description: 'Le vélo original du film E.T', price: "10/jour", localization:'Paris', user: user1)
file1 = URI.open('https://images.pexels.com/photos/1149601/pexels-photo-1149601.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
t1.picture.attach(io: file1, filename: "t1.jpg", content_type: "image/jpg")

t2 = Transport.create!(transport_type: 'Trotinette', description: 'Une super trotinette pour arriver en retard au wagon', price: "10/jour", localization:'Bordeaux', user: user1)
file2= URI.open('https://images.pexels.com/photos/1731751/pexels-photo-1731751.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
t2.picture.attach(io: file2, filename: "t2.jpg", content_type: "image/jpg")

t3 = Transport.create!(transport_type: 'Skateboard', description: 'UN SKATEBOARD de toute beauté', price: "10/jour", localization:'Paris', user: user2)
file3 = URI.open('https://images.pexels.com/photos/165236/pexels-photo-165236.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
t3.picture.attach(io: file3, filename: "t3.jpg", content_type: "image/jpg")

t4 = Transport.create!(transport_type: 'Rollers', description: 'Des patins pour foncer sur les quais !', price: "10/jour", localization:'Paris', user: user1)
file4 = URI.open('https://images.pexels.com/photos/3779669/pexels-photo-3779669.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
t4.picture.attach(io: file4, filename: "t4.jpg", content_type: "image/jpg")

t5 = Transport.create!(transport_type: 'Vélo éléctrique', description: 'un vélo ou un scooter ? venez le tester !', price: "10/jour", localization:'Paris', user: user1)
file5 = URI.open('https://images.pexels.com/photos/310983/pexels-photo-310983.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
t5.picture.attach(io: file5, filename: "t5.jpg", content_type: "image/jpg")

t6 = Transport.create!(transport_type: 'Rollers', description: 'Ca roule ma poule', price: "10/jour", localization:'Paris', user: user1)
file6 = URI.open('https://images.pexels.com/photos/2005992/pexels-photo-2005992.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
t6.picture.attach(io: file6, filename: "t6.jpg", content_type: "image/jpg")

puts "#{Transport.count} transports created"
