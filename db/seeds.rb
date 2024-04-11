# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")

user1_apartments = [
  {
    street: '129 West 81st Street',
    unit: '5A',
    city: 'NY',
    state: 'NY',
    square_footage: '1000',
    price: '2000',
    bedrooms: 1,
    bathrooms: 1.0,
    pets: 'no pets allowed',
    image: 'https://www.hollywoodreporter.com/wp-content/uploads/2015/06/seinfeld_apt.jpg'
  },
  {
    street: '21 Jumpstreet',
    unit: '6C',
    city: 'SA',
    state: 'TX',
    square_footage: '2500',
    price: '1500',
    bedrooms: 2,
    bathrooms: 1.5,
    pets: 'pets allowed',
    image: 'https://www.hollywoodreporter.com/wp-content/uploads/2015/06/seinfeld_apt.jpg'
  },

]

user2_apartments = [
  {
    street: '528 Cash Lane',
    unit: '7B',
    city: 'Miami',
    state: 'FL',
    square_footage: 1200,
    price: '5000',
    bedrooms: 3,
    bathrooms: 2.0,
    pets: 'all pets allowed',
    image: 'https://www.hollywoodreporter.com/wp-content/uploads/2015/06/seinfeld_apt.jpg',
  },
  {
    street: '187 Wrong Turn Blvd.',
    unit: '8D',
    city: 'Huntsville',
    state: 'AL',
    square_footage: 4000,
    price: '1100',
    bedrooms: 3,
    bathrooms: 2.5,
    pets: 'dogs allowed',
    image: 'https://www.hollywoodreporter.com/wp-content/uploads/2015/06/seinfeld_apt.jpg',
  }
]

user1_apartments.each do |apartment|
  user1.apartments.create(apartment)
  puts "Creating: #{apartment}"
end

user2_apartments.each do |apartment|
  user2.apartments.create(apartment)
  puts "Creating: #{apartment}"
end

