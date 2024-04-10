RSpec.describe "Apartments", type: :request do
  let(:user) { User.create(
      email: 'test@example.com',
      password: 'password',
      password_confirmation: 'password'
    )
  }

  describe 'GET #index' do
    it 'returns a list of apartments and http success' do
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
        image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg'
      )
      get apartments_path
      expect(response).to have_http_status(200)
      expect(apartment).to be_valid
    end
  end
  describe 'POST #create' do
    it 'creates a valid apartment with http success' do
      post apartments_path, params: {
        apartment: {
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
          user_id: user.id
        }
      }
      apartment = Apartment.where(street: 'Test Street').first
      expect(response).to have_http_status(200)
      expect(apartment).to be_valid
    end
    it 'creates a invalid apartment' do
      post apartments_path, params: {
        apartment: {
          street: nil,
          unit: nil,
          city: nil,
          state: nil,
          square_footage: nil,
          price: nil,
          bedrooms: nil,
          bathrooms: nil,
          pets: nil,
          image: nil,
          user_id: nil
        }
      }
      apartment = Apartment.where(street: nil).first
      expect(response).to have_http_status(422)
      expect(apartment).to eq(nil)
    end
  end
end
