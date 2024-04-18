# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")
user3 = User.where(email: "test3@example.com").first_or_create(password: "password", password_confirmation: "password")
user4 = User.where(email: "test4@example.com").first_or_create(password: "password", password_confirmation: "password")
user5 = User.where(email: "test5@example.com").first_or_create(password: "password", password_confirmation: "password")
user6 = User.where(email: "test6@example.com").first_or_create(password: "password", password_confirmation: "password")
user7 = User.where(email: "test7@example.com").first_or_create(password: "password", password_confirmation: "password")
user8 = User.where(email: "test8@example.com").first_or_create(password: "password", password_confirmation: "password")
user9 = User.where(email: "test9@example.com").first_or_create(password: "password", password_confirmation: "password")

user1_apartments = [
  {
    name: "Octopus",
    street: "101 Paradise Road",
    unit: "1B",
    city: "Malé",
    state: "Maldives",
    square_footage: "1600",
    price: "1,225",
    bedrooms: 1,
    bathrooms: 2,
    pets: "no pets allowed",
    image:
      "https://images.unsplash.com/photo-1615571022219-eb45cf7faa9d?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YmVhY2glMjBob3VzZXxlbnwwfHwwfHx8MA%3D%3D",
    smart_security_system: true,
    rooftop_pool: true,
    golf_course: false,
    community_garden: false,
    keyless_entry: true,
    onsite_daycare: false,
    smart_thermostat: true,
    spa: true,
    concierge: true,
    ocean_view: true,
    personal_chef: false,
    fiber_optic: true,
    maid_service: false,
    pizza_ovens: false,
    hibachi_grill: false,
    full_kitchen: true,
  },
]

user2_apartments = [
  {
    name: "Algae",
    street: "102 Utopia Highway",
    unit: "2D",
    city: "Hulhumalé",
    state: "Maldives",
    square_footage: "1700",
    price: "1,450",
    bedrooms: 2,
    bathrooms: 1.5,
    pets: "pets allowed",
    image:
      "https://images.unsplash.com/photo-1631528858266-5ebeb8bfc6f5?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGJlYWNoJTIwaG91c2V8ZW58MHx8MHx8fDA%3D",
    smart_security_system: false,
    rooftop_pool: false,
    golf_course: true,
    community_garden: false,
    keyless_entry: true,
    onsite_daycare: true,
    smart_thermostat: true,
    spa: true,
    concierge: false,
    ocean_view: true,
    personal_chef: true,
    fiber_optic: false,
    maid_service: true,
    pizza_ovens: true,
    hibachi_grill: false,
    full_kitchen: false,
  },
]

user3_apartments = [
  {
    name: "Treasure",
    street: "523 Luxury Blvd",
    unit: "9A",
    city: "Fuvahmulah",
    state: "Maldives",
    square_footage: "2400",
    price: "900",
    bedrooms: 3,
    bathrooms: 2.0,
    pets: "no pets allowed",
    image:
      "https://images.unsplash.com/photo-1613553497126-a44624272024?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fGJlYWNoJTIwaG91c2V8ZW58MHx8MHx8fDA%3D",
    smart_security_system: true,
    rooftop_pool: false,
    golf_course: false,
    community_garden: true,
    keyless_entry: false,
    onsite_daycare: true,
    smart_thermostat: false,
    spa: true,
    concierge: true,
    ocean_view: false,
    personal_chef: false,
    fiber_optic: true,
    maid_service: true,
    pizza_ovens: false,
    hibachi_grill: true,
    full_kitchen: false,
  },
]

user4_apartments = [
  {
    name: "Lobster",
    street: "1017 Sunset Ln.",
    unit: "7C",
    city: "Addu City",
    state: "Maldives",
    square_footage: "2500",
    price: "1,650",
    bedrooms: 2,
    bathrooms: 1.5,
    pets: "pets allowed",
    image:
      "https://images.unsplash.com/photo-1511840636560-acee95b3a83f?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGJlYWNoJTIwaG91c2V8ZW58MHx8MHx8fDA%3D",
    smart_security_system: true,
    rooftop_pool: true,
    golf_course: false,
    community_garden: true,
    keyless_entry: false,
    onsite_daycare: true,
    smart_thermostat: true,
    spa: true,
    concierge: true,
    ocean_view: false,
    personal_chef: true,
    fiber_optic: true,
    maid_service: true,
    pizza_ovens: false,
    hibachi_grill: true,
    full_kitchen: false,
  },
]

user5_apartments = [
  {
    name: "Sunscreen",
    street: "111 Sandy Court",
    unit: "5L",
    city: "Kulhudhuffushi",
    state: "Maldives",
    square_footage: "3000",
    price: "890",
    bedrooms: 2,
    bathrooms: 2.5,
    pets: "no pets allowed",
    image:
      "https://plus.unsplash.com/premium_photo-1684348962187-988fc3d7f024?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fGJlYWNoJTIwaG91c2V8ZW58MHx8MHx8fDA%3D",
    smart_security_system: true,
    rooftop_pool: true,
    golf_course: true,
    community_garden: true,
    keyless_entry: true,
    onsite_daycare: true,
    smart_thermostat: true,
    spa: true,
    concierge: false,
    ocean_view: false,
    personal_chef: false,
    fiber_optic: false,
    maid_service: true,
    pizza_ovens: false,
    hibachi_grill: true,
    full_kitchen: true,
  },
]

user6_apartments = [
  {
    name: "Bubble",
    street: "211 Forrest Bridge",
    unit: "3K",
    city: "Thinadhoo",
    state: "Maldives",
    square_footage: "1100",
    price: "2,100",
    bedrooms: 1,
    bathrooms: 1.5,
    pets: "pets allowed",
    image:
      "https://images.unsplash.com/photo-1499793983690-e29da59ef1c2?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhY2glMjBob3VzZXxlbnwwfHwwfHx8MA%3D%3D",
    smart_security_system: true,
    rooftop_pool: true,
    golf_course: false,
    community_garden: true,
    keyless_entry: true,
    onsite_daycare: false,
    smart_thermostat: false,
    spa: true,
    concierge: false,
    ocean_view: true,
    personal_chef: true,
    fiber_optic: false,
    maid_service: true,
    pizza_ovens: false,
    hibachi_grill: true,
    full_kitchen: false,
  },
]

user7_apartments = [
  {
    name: "Freckle",
    street: "777 Coral Reef Street",
    unit: "4B",
    city: "Maafushi",
    state: "Maldives",
    square_footage: "1800",
    price: "1,350",
    bedrooms: 2,
    bathrooms: 2,
    pets: "pets allowed",
    image: "https://images.unsplash.com/photo-1580494767366-82f4e74f5655?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzF8fGJlYWNoJTIwaG91c2V8ZW58MHx8MHx8fDA%3D",
    smart_security_system: false,
    rooftop_pool: false,
    golf_course: false,
    community_garden: true,
    keyless_entry: true,
    onsite_daycare: false,
    smart_thermostat: true,
    spa: true,
    concierge: true,
    ocean_view: true,
    personal_chef: false,
    fiber_optic: true,
    maid_service: true,
    pizza_ovens: false,
    hibachi_grill: false,
    full_kitchen: true,
  },
]

user8_apartments = [
  {
    name: "Sand Flea",
    street: "777 Coral Reef Street",
    unit: "4B",
    city: "Maafushi",
    state: "Maldives",
    square_footage: "1800",
    price: "1,350",
    bedrooms: 2,
    bathrooms: 2,
    pets: "pets allowed",
    image:
      "https://images.unsplash.com/photo-1567345269304-74db2bf82e33?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTB8fGJlYWNoJTIwaG91c2V8ZW58MHx8MHx8fDA%3D",
    smart_security_system: false,
    rooftop_pool: false,
    golf_course: false,
    community_garden: true,
    keyless_entry: true,
    onsite_daycare: false,
    smart_thermostat: true,
    spa: true,
    concierge: true,
    ocean_view: true,
    personal_chef: false,
    fiber_optic: true,
    maid_service: true,
    pizza_ovens: false,
    hibachi_grill: false,
    full_kitchen: true,
  },
]

user9_apartments = [
  {
    name: "Shark Tooth",
    street: "987 Sandcastle Lane",
    unit: "3D",
    city: "Fehendhoo",
    state: "Maldives",
    square_footage: "2000",
    price: "1,600",
    bedrooms: 2,
    bathrooms: 2,
    pets: "pets allowed",
    image:
      "https://images.unsplash.com/photo-1598924957326-0446ac30341e?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzZ8fGJlYWNoJTIwaG91c2V8ZW58MHx8MHx8fDA%3D",
    smart_security_system: false,
    rooftop_pool: true,
    golf_course: false,
    community_garden: true,
    keyless_entry: false,
    onsite_daycare: true,
    smart_thermostat: true,
    spa: true,
    concierge: false,
    ocean_view: false,
    personal_chef: true,
    fiber_optic: true,
    maid_service: true,
    pizza_ovens: false,
    hibachi_grill: false,
    full_kitchen: true,
  },
]

user2_apartments =[ 
  {
    name: "Salt",
    street: "456 Coastal Highway",
    unit: "2A",
    city: "Thinadhoo",
    state: "Maldives",
    square_footage: "1500",
    price: "1,200",
    bedrooms: 1,
    bathrooms: 1,
    pets: "no pets allowed",
    image:
      "https://images.unsplash.com/photo-1594398901394-4e34939a4fd0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTl8fGJlYWNoJTIwaG91c2V8ZW58MHx8MHx8fDA%3D",
    smart_security_system: true,
    rooftop_pool: false,
    golf_course: true,
    community_garden: false,
    keyless_entry: true,
    onsite_daycare: false,
    smart_thermostat: true,
    spa: true,
    concierge: true,
    ocean_view: false,
    personal_chef: false,
    fiber_optic: false,
    maid_service: true,
    pizza_ovens: false,
    hibachi_grill: true,
    full_kitchen: false,
  },
]

user3_apartments =[ 
  {
    name: "Tentacles",
    street: "456 Coastal Highway",
    unit: "2A",
    city: "Thinadhoo",
    state: "Maldives",
    square_footage: "1500",
    price: "1,200",
    bedrooms: 1,
    bathrooms: 1,
    pets: "no pets allowed",
    image:
      "https://images.unsplash.com/photo-1611637599857-eb57329bb46d?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTh8fGJlYWNoJTIwaG91c2V8ZW58MHx8MHx8fDA%3D",
    smart_security_system: true,
    rooftop_pool: false,
    golf_course: true,
    community_garden: false,
    keyless_entry: true,
    onsite_daycare: false,
    smart_thermostat: true,
    spa: true,
    concierge: true,
    ocean_view: false,
    personal_chef: false,
    fiber_optic: false,
    maid_service: true,
    pizza_ovens: false,
    hibachi_grill: true,
    full_kitchen: false,
  },
]

user4_apartments =[ 
  {
    name: "Fire Pit",
    street: "456 Coastal Highway",
    unit: "2A",
    city: "Thinadhoo",
    state: "Maldives",
    square_footage: "1500",
    price: "1,200",
    bedrooms: 1,
    bathrooms: 1,
    pets: "no pets allowed",
    image:
      "https://images.unsplash.com/photo-1612404336841-4c8fe1091aea?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTMxfHxiZWFjaCUyMGhvdXNlfGVufDB8fDB8fHww",
    smart_security_system: true,
    rooftop_pool: false,
    golf_course: true,
    community_garden: false,
    keyless_entry: true,
    onsite_daycare: false,
    smart_thermostat: true,
    spa: true,
    concierge: true,
    ocean_view: false,
    personal_chef: false,
    fiber_optic: false,
    maid_service: true,
    pizza_ovens: false,
    hibachi_grill: true,
    full_kitchen: false,
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


