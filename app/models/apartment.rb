class Apartment < ApplicationRecord
  belongs_to :user
  validates :name, :street, :unit, :city, :state, :square_footage, :price, :bedrooms, :bathrooms, :pets, :image, presence: true
  validates :smart_security_system, :rooftop_pool, :golf_course, :community_garden, :keyless_entry, :onsite_daycare, :smart_thermostat, :spa, :concierge, :ocean_view, :personal_chef, :fiber_optic, :maid_service, :pizza_ovens, :hibachi_grill, :full_kitchen, inclusion: [true, false]
  validates :smart_security_system, :rooftop_pool, :golf_course, :community_garden, :keyless_entry, :onsite_daycare, :smart_thermostat, :spa, :concierge, :ocean_view, :personal_chef, :fiber_optic, :maid_service, :pizza_ovens, :hibachi_grill, :full_kitchen, exclusion: [nil]
end


