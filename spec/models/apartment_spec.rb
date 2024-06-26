require 'rails_helper'

RSpec.describe Apartment, type: :model do
  let(:user) { User.create(
      email: 'test@example.com',
      password: 'password',
      password_confirmation: 'password'
    )
  }

  it 'is not valid without a street attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      golf_course: true,
      community_garden: true,
      keyless_entry: false,
      onsite_daycare: true,
      smart_thermostat: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:street].first).to eq("can't be blank")
  end
  it 'is not valid without a apartment unit attribute' do
    apartment = user.apartments.create(
      name: 'name',
      street: 'Test Street',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      golf_course: true,
      community_garden: true,
      keyless_entry: false,
      onsite_daycare: true,
      smart_thermostat: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:unit].first).to eq("can't be blank")
  end
  it 'is not valid without a city attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      street: 'Test Street',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      golf_course: true,
      community_garden: true,
      keyless_entry: false,
      onsite_daycare: true,
      smart_thermostat: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:city].first).to eq("can't be blank")
  end
  it 'is not valid without a State attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      street: 'Test Street',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      golf_course: true,
      community_garden: true,
      keyless_entry: false,
      onsite_daycare: true,
      smart_thermostat: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:state].first).to eq("can't be blank")
  end
  it 'is not valid without a apartment square footage attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      street: 'Test Street',
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      golf_course: true,
      community_garden: true,
      keyless_entry: false,
      onsite_daycare: true,
      smart_thermostat: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:square_footage].first).to eq("can't be blank")
  end
  it 'is not valid without a apartment price attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      street: 'Test Street',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      golf_course: true,
      community_garden: true,
      keyless_entry: false,
      onsite_daycare: true,
      smart_thermostat: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:price].first).to eq("can't be blank")
  end
  it 'is not valid without a bedrooms attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      street: 'Test Street',
      bathrooms: 1.0,
      pets: 'Test Pets',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      golf_course: true,
      community_garden: true,
      keyless_entry: false,
      onsite_daycare: true,
      smart_thermostat: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:bedrooms].first).to eq("can't be blank")
  end
  it 'is not valid without a bathrooms attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      street: 'Test Street',
      pets: 'Test Pets',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      golf_course: true,
      community_garden: true,
      keyless_entry: false,
      onsite_daycare: true,
      smart_thermostat: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:bathrooms].first).to eq("can't be blank")
  end
  it 'is not valid without a pets attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      street: 'Street Test',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      golf_course: true,
      community_garden: true,
      keyless_entry: false,
      onsite_daycare: true,
      smart_thermostat: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:pets].first).to eq("can't be blank")
  end
  it 'is not valid without a image attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      street: 'Test City',
      smart_security_system: false,
      rooftop_pool: true,
      golf_course: true,
      community_garden: true,
      keyless_entry: false,
      onsite_daycare: true,
      smart_thermostat: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:image]).not_to(be_empty)
  end
  it 'is not valid without a smart_security_system attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      street: 'Test City',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      rooftop_pool: true,
      golf_course: true,
      community_garden: true,
      keyless_entry: false,
      onsite_daycare: true,
      smart_thermostat: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:smart_security_system].first).to eq("is not included in the list")
  end
  it 'is not valid without a rooftop_pool attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      street: 'Test City',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      golf_course: true,
      community_garden: true,
      keyless_entry: false,
      onsite_daycare: true,
      smart_thermostat: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:rooftop_pool].first).to eq("is not included in the list")
  end
  it 'is not valid without a golf_course attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      street: 'Test City',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      community_garden: true,
      keyless_entry: false,
      onsite_daycare: true,
      smart_thermostat: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:golf_course].first).to eq("is not included in the list")
  end
  it 'is not valid without a community_garden attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      street: 'Test City',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      golf_course: true,
      keyless_entry: false,
      onsite_daycare: true,
      smart_thermostat: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:community_garden].first).to eq("is not included in the list")
  end
  it 'is not valid without a golf_course attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      street: 'Test City',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      community_garden: true,
      keyless_entry: false,
      onsite_daycare: true,
      smart_thermostat: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:golf_course].first).to eq("is not included in the list")
  end
  it 'is not valid without a keyless_entry attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      street: 'Test City',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      community_garden: true,
      golf_course: true,
      onsite_daycare: true,
      smart_thermostat: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:keyless_entry].first).to eq("is not included in the list")
  end
  it 'is not valid without a onsite_daycare attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      street: 'Test City',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      community_garden: true,
      golf_course: true,
      keyless_entry: false,
      smart_thermostat: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:onsite_daycare].first).to eq("is not included in the list")
  end
  it 'is not valid without a spa attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      street: 'Test City',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      community_garden: true,
      golf_course: true,
      keyless_entry: false,
      smart_thermostat: true,
      onsite_daycare: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:spa].first).to eq("is not included in the list")
  end
  it 'is not valid without a concierge attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      street: 'Test City',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      community_garden: true,
      golf_course: true,
      keyless_entry: false,
      smart_thermostat: true,
      onsite_daycare: true,
      spa: true,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:concierge].first).to eq("is not included in the list")
  end
  it 'is not valid without a ocean_view attribute' do
    apartment = user.apartments.create(
      unit: 'Test Unit',
      name: 'name',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      street: 'Test City',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      community_garden: true,
      golf_course: true,
      keyless_entry: false,
      smart_thermostat: true,
      onsite_daycare: true,
      spa: true,
      concierge: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:ocean_view].first).to eq("is not included in the list")
  end
  it 'is not valid without a personal_chef attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      street: 'Test City',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      community_garden: true,
      golf_course: true,
      keyless_entry: false,
      smart_thermostat: true,
      onsite_daycare: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:personal_chef].first).to eq("is not included in the list")
  end
  it 'is not valid without a fiber_optic attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      street: 'Test City',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      community_garden: true,
      golf_course: true,
      keyless_entry: false,
      smart_thermostat: true,
      onsite_daycare: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:fiber_optic].first).to eq("is not included in the list")
  end
  it 'is not valid without a maid_service attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      street: 'Test City',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      community_garden: true,
      golf_course: true,
      keyless_entry: false,
      smart_thermostat: true,
      onsite_daycare: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      pizza_ovens: true,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:maid_service].first).to eq("is not included in the list")
  end
  it 'is not valid without a pizza_ovens attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      street: 'Test City',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      community_garden: true,
      golf_course: true,
      keyless_entry: false,
      smart_thermostat: true,
      onsite_daycare: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      hibachi_grill: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:pizza_ovens].first).to eq("is not included in the list")
  end
  it 'is not valid without a hibachi_grill attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      street: 'Test City',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      community_garden: true,
      golf_course: true,
      keyless_entry: false,
      smart_thermostat: true,
      onsite_daycare: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      full_kitchen: false,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:hibachi_grill].first).to eq("is not included in the list")
  end
  it 'is not valid without a full_kitchen attribute' do
    apartment = user.apartments.create(
      name: 'name',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      street: 'Test City',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      community_garden: true,
      golf_course: true,
      keyless_entry: false,
      smart_thermostat: true,
      onsite_daycare: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:full_kitchen].first).to eq("is not included in the list")
  end
  it 'is not valid without a name attribute' do
    apartment = user.apartments.create(
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      street: 'Test City',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      smart_security_system: false,
      rooftop_pool: true,
      community_garden: true,
      golf_course: true,
      keyless_entry: false,
      smart_thermostat: true,
      onsite_daycare: true,
      spa: true,
      concierge: false,
      ocean_view: false,
      personal_chef: false,
      fiber_optic: false,
      maid_service: false,
      pizza_ovens: true,
      hibachi_grill: true,
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:name].first).to eq("can't be blank")
  end
end

