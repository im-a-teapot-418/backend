# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Seeding users...'
users = User.create([
  {
    first_name: 'Veselin',
    last_name: 'Stoyanov',
    email: 'john.doe1@sun-fish.com',
    phone_number: '0899999999'
  },
  {
    first_name: 'Nikola',
    last_name: 'Jichev',
    email: 'john.doe2@sun-fish.com',
    phone_number: '0888888888'
  },
  {
    first_name: 'Pavel',
    last_name: 'Gyurov',
    email: 'john.doe3@sun-fish.com',
    phone_number: '0877777777'
  }
])

puts 'Seeding facilities...'
facilities = Facility.create([
  {
    name: 'Bobi\'s Gym',
    latitude: 42.6461536,
    longitude: 23.3407213
  },
  {
    name: 'Tennis Club Vector',
    latitude: 42.6485534,
    longitude: 23.3513892
  },
  {
    name: 'Swimming Pool at Hotel Vitosha',
    latitude: 42.65669,
    longitude: 23.3509375
  }
])

puts 'Seeding qr codes...'
qr_codes = QrCode.create([
  {
    facility: facilities[0],
    code: SecureRandom.uuid,
  },
  {
    facility: facilities[1],
    code: SecureRandom.uuid,
  },
  {
    facility: facilities[2],
    code: SecureRandom.uuid
  }
])

puts 'Seeding check ins...'
checkins = Checkin.create([
  {
    user: users[0],
    facility: facilities[0],
  },
  {
    user: users[0],
    facility: facilities[2],
  },
  {
    user: users[2],
    facility: facilities[1],
  }
])


puts 'All done!'
