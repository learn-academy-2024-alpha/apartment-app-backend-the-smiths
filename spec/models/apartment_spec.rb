require 'rails_helper'

RSpec.describe Apartment, type: :model do
  let(:user) { User.create(
      email: 'test@example.com',
      password: 'password',
      password_confirmation: 'password'
    )
  }

  it 'is valid with valid attributes' do
    apartment = user.apartments.create(
      street: 'Test Street',
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
    )
    expect(apartment).to be_valid
  end

  it 'is not valid without a street attribute' do
    apartment = user.apartments.create(
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:street].first).to eq("can't be blank")
  end
  it 'is not valid without a apartment unit attribute' do
    apartment = user.apartments.create(
      street: 'Test Street',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:unit].first).to eq("can't be blank")
  end
  it 'is not valid without a city attribute' do
    apartment = user.apartments.create(
      unit: 'Test Unit',
      street: 'Test Street',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:city].first).to eq("can't be blank")
  end
  it 'is not valid without a State attribute' do
    apartment = user.apartments.create(
      unit: 'Test Unit',
      city: 'Test City',
      street: 'Test Street',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:state].first).to eq("can't be blank")
  end
  it 'is not valid without a apartment square footage attribute' do
    apartment = user.apartments.create(
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      street: 'Test Street',
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:square_footage].first).to eq("can't be blank")
  end
  it 'is not valid without a apartment price attribute' do
    apartment = user.apartments.create(
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      street: 'Test Street',
      bedrooms: 1,
      bathrooms: 1.0,
      pets: 'Test Pets',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:price].first).to eq("can't be blank")
  end
  it 'is not valid without a bedrooms attribute' do
    apartment = user.apartments.create(
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      street: 'Test Street',
      bathrooms: 1.0,
      pets: 'Test Pets',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:bedrooms].first).to eq("can't be blank")
  end
  it 'is not valid without a bathrooms attribute' do
    apartment = user.apartments.create(
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      street: 'Test Street',
      pets: 'Test Pets',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:bathrooms].first).to eq("can't be blank")
  end
  it 'is not valid without a pets attribute' do
    apartment = user.apartments.create(
      unit: 'Test Unit',
      city: 'Test City',
      state: 'Test State',
      square_footage: 1000,
      price: '$1000',
      bedrooms: 1,
      bathrooms: 1.0,
      street: 'Street Test',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:pets].first).to eq("can't be blank")
  end
  it 'is not valid without a image attribute' do
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
    )
    expect(apartment).not_to be_valid
    expect(apartment.errors[:image].first).to eq("can't be blank")
  end
end

