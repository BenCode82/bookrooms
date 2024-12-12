# require 'open-uri'

Room.destroy_all
User.destroy_all
# Booking.destroy_all
puts 'Database cleaned'

puts 'Creating users...'
User.create!(
    email: 'admin@admin.com',
    password: 'admin123',
    first_name: 'Michel',
    last_name: 'Dupont',
    address: '1574 avenue de Saint-Maur, 34000 Montpellier',
    longitude: 3.8767,
    latitude: 43.6116
    )
puts 'Users created'


puts 'Creating rooms...'
room_1 = Room.create!(
    hotel_name: 'Hotel de Paris',
    description: 'Nice room in Paris',
    rating: 4,
    price: 100,
    address: '1 rue Victor Hugo, 75001 Paris',
    longitude: 2.3522,
    latitude: 48.8566
    )

room_1.photo.attach(io: File.open(Rails.root.join("app/assets/images/photo1.jpg")),
    filename: "photo1.jpg",
    content_type: "image/jpeg")


room_2 = Room.create!(
  hotel_name: 'Hotel de Lyon',
  description:  'Nice room in Lyon',
  rating: 3,
  price: 80,
  address: '45 rue de la République, 69002 Lyon',
  longitude: 4.8357,
  latitude: 45.7640
  )

room_2.photo.attach(io: File.open(Rails.root.join("app/assets/images/photo2.jpg")),
  filename: "photo2.jpg",
  content_type: "image/jpeg")

puts 'Rooms created...'

  # hotel_name:
  # description:
  # rating:
  # price:
  # address:
  # longitude:
  # latitude:
