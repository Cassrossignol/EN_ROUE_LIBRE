# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup}.
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Destroying users...'
User.destroy_all
puts 'Creating users...'
User.create!(email: 'romain.thiriot@gmail.com', password: "1234567")
User.create!(email: 'robin@gmail.com', password: "1234567")
puts "#{User.count} users created"

Transport.destroy_all


Transport.create!(username: "Romain", transport_type: 'Vélo', description: 'Le vélo original du film E.T', price: "10/jour", picture:'https://images.pexels.com/photos/1149601/pexels-photo-1149601.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', localization:'Paris' , availability:'Disponible', user_id: 1)
Transport.create!(username: "Romain", transport_type: 'Trotinette', description: 'Une super trotinette pour arriver en retard au wagon', price: "10/jour", picture: 'https://images.pexels.com/photos/1642055/pexels-photo-1642055.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', localization:'Bordeaux' , availability: 'Disponible', user_id: 1 )
Transport.create!(username: "Romain", transport_type: 'Skateboard', description: 'UN SKATEBOARD de toute beauté', price: "10/jour", picture: 'https://images.pexels.com/photos/165236/pexels-photo-165236.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', localization:'Paris' , availability: 'Disponible', user_id: 1)
Transport.create!(username: "Robin", transport_type: 'Rollers', description: 'Des patins pour foncer sur les quais !', price: "10/jour", picture:'https://images.pexels.com/photos/3779669/pexels-photo-3779669.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', localization:'Lyon', availability:'Disponible', user_id: 1 )
Transport.create!(username: "Robin", transport_type: 'Velo éléctrique', description: 'un vélo ou un scooter ? venez le tester !', price: "10/jour", picture:'https://images.pexels.com/photos/2130611/pexels-photo-2130611.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940' , localization: 'Bordeaux' , availability:'Disponible', user_id: 1 )
Transport.create!(username: "Romain", transport_type: 'Rollers', description: 'Ca roule ma poule', price: "10/jour", picture:'https://images.pexels.com/photos/2005992/pexels-photo-2005992.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940' , localization:'Paris' , availability:'Disponible', user_id: 2 )

puts "#{Transport.count} transports created"
