Booking.destroy_all
Room.destroy_all
User.destroy_all
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
    description: "Un cocon moderne et lumineux au cœur de Paris,
    offrant une vue imprenable sur les toits parisiens. Cette chambre
    est parfaite pour un séjour romantique ou un voyage d'affaires,
    avec des commodités de qualité et un charme typiquement parisien.",
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
  description: "Une chambre chaleureuse et accueillante, située dans
  le centre animé de Lyon. Idéale pour les voyageurs souhaitant
  découvrir la gastronomie locale, avec un accès rapide aux
  principales attractions de la ville.",
  rating: 3,
  price: 80,
  address: '45 rue de la République, 69002 Lyon',
  longitude: 4.8357,
  latitude: 45.7640
  )

room_2.photo.attach(io: File.open(Rails.root.join("app/assets/images/photo2.jpg")),
  filename: "photo2.jpg",
  content_type: "image/jpeg")

room_3 = Room.create!(
  hotel_name: 'Hotel des voyageurs',
  description: "Détendez-vous dans cette chambre élégante au
  décor méditerranéen. Située à proximité des plages et des
  ruelles historiques de Montpellier, c'est un havre de paix
  après une journée de découverte.",
  rating: 5,
  price: 78,
  address: '452 rue de la République, 34000 Montpellier',
  longitude: 3.8767,
  latitude: 43.6116
  )

room_3.photo.attach(io: File.open(Rails.root.join("app/assets/images/photo3.jpg")),
  filename: "photo3.jpg",
  content_type: "image/jpeg")

room_4 = Room.create!(
  hotel_name: 'Hotel des wagonneurs',
  description: "Cette chambre spacieuse et confortable est
  baignée de lumière naturelle. Elle combine l'authenticité
  du sud-ouest avec une touche moderne pour vous offrir un
  séjour inoubliable à Toulouse.",
  rating: 4,
  price: 95,
  address: '20 Port Saint-Etienne, 31000 Toulouse',
  longitude: 1.4442,
  latitude: 43.6047
  )

room_4.photo.attach(io: File.open(Rails.root.join("app/assets/images/photo4.jpg")),
  filename: "photo4.jpg",
  content_type: "image/jpeg")

puts 'Rooms created...'
