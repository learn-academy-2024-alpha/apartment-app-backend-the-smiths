# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")
user3 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")
user4 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")
user5 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")
user6 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")
user7 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")
user8 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")
user9 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")

user1_apartments = [
  {
    street: '101 Paradise Road',
    unit: '1B',
    city: 'Malé',
    state: 'Maldives',
    square_footage: '1600',
    price: '2500',
    bedrooms: 1,
    bathrooms: 1.0,
    pets: 'no pets allowed',
    image: 'https://www.hollywoodreporter.com/wp-content/uploads/2015/06/seinfeld_apt.jpg'
  },
]

user2_apartments = [
  {
    street: '102 Utopia Highway',
    unit: '2D',
    city: 'Hulhumalé',
    state: 'Maldives',
    square_footage: '1700',
    price: '3000',
    bedrooms: 2,
    bathrooms: 1.5,
    pets: 'pets allowed',
    image: 'https://www.hollywoodreporter.com/wp-content/uploads/2015/06/seinfeld_apt.jpg'
  },
]

user3_apartments = [
  {
    street: '523 Luxury Blvd',
    unit: '9A',
    city: 'Fuvahmulah',
    state: 'Maldives',
    square_footage: '2400',
    price: '5000',
    bedrooms: 3,
    bathrooms: 2.0,
    pets: 'no pets allowed',
    image: 'https://www.hollywoodreporter.com/wp-content/uploads/2015/06/seinfeld_apt.jpg'
  },
]
user4_apartments = [
  {
    street: '1017 Sunset Ln.',
    unit: '7C',
    city: 'Addu City',
    state: 'Maldives',
    square_footage: '2500',
    price: '6000',
    bedrooms: 2,
    bathrooms: 1.5,
    pets: 'pets allowed',
    image: 'https://www.hollywoodreporter.com/wp-content/uploads/2015/06/seinfeld_apt.jpg'
  },
]
user5_apartments = [
  {
    street: '111 Sandy Court',
    unit: '5L',
    city: 'Kulhudhuffushi',
    state: 'Maldives',
    square_footage: '3000',
    price: '6500',
    bedrooms: 2,
    bathrooms: 2.5,
    pets: 'no pets allowed',
    image: 'https://www.hollywoodreporter.com/wp-content/uploads/2015/06/seinfeld_apt.jpg'
  },
]
user6_apartments = [
  {
    street: '211 Forrest Bridge',
    unit: '3K',
    city: 'Thinadhoo',
    state: 'Maldives',
    square_footage: '1100',
    price: '3000',
    bedrooms: 1,
    bathrooms: 1.5,
    pets: 'pets allowed',
    image: 'https://www.hollywoodreporter.com/wp-content/uploads/2015/06/seinfeld_apt.jpg'
  },
]
user7_apartments = [
  {
    street: '108 Gumdrop Lane',
    unit: '9D',
    city: 'Dhidhdhoo',
    state: 'Maldives',
    square_footage: '4000',
    price: '8000',
    bedrooms: 3,
    bathrooms: 3.5,
    pets: 'pets allowed',
    image: 'https://www.hollywoodreporter.com/wp-content/uploads/2015/06/seinfeld_apt.jpg'
  },
]
user8_apartments = [
  {
    street: '87 Park Road',
    unit: '2E',
    city: 'Male',
    state: 'Naifaru',
    square_footage: '6000',
    price: '9000',
    bedrooms: 3,
    bathrooms: 3,
    pets: 'pets allowed',
    image: 'https://www.hollywoodreporter.com/wp-content/uploads/2015/06/seinfeld_apt.jpg'
  },
]
user9_apartments = [
  {
    street: '444 Spirit Circle',
    unit: '4C',
    city: 'Villingili',
    state: 'Maldives',
    square_footage: '1500',
    price: '2800',
    bedrooms: 2,
    bathrooms: 1.5,
    pets: 'no pets allowed',
    image: 'https://www.hollywoodreporter.com/wp-content/uploads/2015/06/seinfeld_apt.jpg'
  },
]
user1_apartments.each do |apartment|
  user1.apartments.create(apartment)
  puts "Creating: #{apartment}"
end

user2_apartments.each do |apartment|
  user2.apartments.create(apartment)
  puts "Creating: #{apartment}"
end

user3_apartments.each do |apartment|
  user3.apartments.create(apartment)
  puts "Creating: #{apartment}"
end

user4_apartments.each do |apartment|
  user4.apartments.create(apartment)
  puts "Creating: #{apartment}"
end

user5_apartments.each do |apartment|
  user5.apartments.create(apartment)
  puts "Creating: #{apartment}"
end

user6_apartments.each do |apartment|
  user6.apartments.create(apartment)
  puts "Creating: #{apartment}"
end

user7_apartments.each do |apartment|
  user7.apartments.create(apartment)
  puts "Creating: #{apartment}"
end

user8_apartments.each do |apartment|
  user8.apartments.create(apartment)
  puts "Creating: #{apartment}"
end

user9_apartments.each do |apartment|
  user9.apartments.create(apartment)
  puts "Creating: #{apartment}"
end

