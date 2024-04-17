class Apartment < ApplicationRecord
  belongs_to :user
  validates :street, :unit, :city, :state, :square_footage, :price, :bedrooms, :bathrooms, :pets, :smart_security_system, :rooftop_pool, :golf_course, :community_garden, :keyless_entry, :onsite_daycare, :smart_thermostat, :spa, :concierge, :ocean_view, :personal_chef, :fiber_optic, :maid_service, :pizza_ovens, :hibachi_grill, :full_kitchen, presence: true
end


