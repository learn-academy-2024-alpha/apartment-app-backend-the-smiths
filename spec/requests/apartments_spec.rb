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
        name: 'Name',
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
      get apartments_path
      expect(response).to have_http_status(200)
      expect(apartment).to be_valid
    end
  end

  describe 'POST #create' do
    it 'creates a valid apartment with http success' do
      post apartments_path, params: {
        apartment: {
        name: 'Name',
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
        user_id: user.id,
        }
      }
      apartment = Apartment.where(street: 'Test Street').first
      expect(response).to have_http_status(200)
      expect(apartment).to be_valid
    end
    it 'creates a invalid apartment' do
      post apartments_path, params: {
        apartment: {
          name: nil,
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
          user_id: nil,smart_security_system: nil,
          rooftop_pool: nil,
          golf_course: nil,
          community_garden: nil,
          keyless_entry: nil,
          onsite_daycare: nil,
          smart_thermostat: nil,
          spa: nil,
          concierge: nil,
          ocean_view: nil,
          personal_chef: nil,
          fiber_optic: nil,
          maid_service: nil,
          pizza_ovens: nil,
          hibachi_grill: nil,
          full_kitchen: nil,
        }
      }
      apartment = Apartment.where(street: nil).first
      expect(response).to have_http_status(422)
      expect(apartment).to eq(nil)
    end
  end

  describe 'PATCH #update' do 
    it 'returns an http status of success and creates valid updates to the apartment' do
      apartment = user.apartments.create(
        name: 'Name',
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
      apartment = Apartment.where(street: 'Test Street').first
      patch apartment_path(apartment), params: {
        apartment: {
          name: 'Name',
          street: 'Test Street 2',
          unit: 'Test Unit 2',
          city: 'Test City 2',
          state: 'Test State 2',
          square_footage: 2000,
          price: '$2000',
          bedrooms: 2,
          bathrooms: 2.0,
          pets: 'Test Pets 2',
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
          user_id: user.id
        }
      }
      apartment = Apartment.where(street: 'Test Street 2').first
      expect(apartment.street).to eq('Test Street 2')
      expect(apartment.unit).to eq('Test Unit 2')
      expect(apartment.city).to eq('Test City 2')
      expect(apartment.state).to eq('Test State 2')
      expect(apartment.square_footage).to eq(2000)
      expect(apartment.price).to eq('$2000')
      expect(apartment.bedrooms).to eq(2)
      expect(apartment.bathrooms).to eq(2.0)
      expect(apartment.pets).to eq('Test Pets 2')
      expect(apartment.image).to eq('https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg')
      expect(apartment.user_id).to eq(user.id)
      expect(apartment.smart_security_system).to eq(false)
      expect(apartment.rooftop_pool).to eq(true)
      expect(apartment.golf_course).to eq(true)
      expect(apartment.community_garden).to eq(true)
      expect(apartment.keyless_entry).to eq(false)
      expect(apartment.smart_thermostat).to eq(true)
      expect(apartment.onsite_daycare).to eq(true)
      expect(apartment.spa).to eq(true)
      expect(apartment.concierge).to eq(false)
      expect(apartment.ocean_view).to eq(false)
      expect(apartment.personal_chef).to eq(false)
      expect(apartment.fiber_optic).to eq(false)
      expect(apartment.maid_service).to eq(false)
      expect(apartment.pizza_ovens).to eq(true)
      expect(apartment.hibachi_grill).to eq(true)
      expect(apartment.full_kitchen).to eq(false)
      expect(apartment).to be_valid
      expect(response).to have_http_status(200)
    end
    it 'returns an http status error for an invalid apartment' do
      apartment = user.apartments.create(
        name: 'Name',
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
      apartment = Apartment.where(street: 'Test Street').first
      patch apartment_path(apartment.id), params: {
        apartment: {
          name: nil,
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
          user_id: nil,
          smart_security_system: nil,
          rooftop_pool: nil,
          golf_course: nil,
          community_garden: nil,
          keyless_entry: nil,
          onsite_daycare: nil,
          smart_thermostat: nil,
          spa: nil,
          concierge: nil,
          ocean_view: nil,
          personal_chef: nil,
          fiber_optic: nil,
          maid_service: nil,
          pizza_ovens: nil,
          hibachi_grill: nil,
          full_kitchen: nil,
        }
      }
      apartment = Apartment.where(street: nil).first
      expect(apartment).to eq(nil)
      expect(response).to have_http_status(422)
    end
  end

  describe 'DELETE #destroy' do
    it 'deletes the apartment' do
      apartment = user.apartments.create(
        name: 'Name',
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
      delete apartment_path(apartment)
      apartment = Apartment.where(street: 'Test Street').first
      expect(apartment).to eq(nil)
    end
  end
end


