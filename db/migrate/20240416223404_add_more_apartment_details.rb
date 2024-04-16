class AddMoreApartmentDetails < ActiveRecord::Migration[7.1]
  def change
    add_column :apartments, :golf_course, :boolean
    add_column :apartments, :community_garden, :boolean
    add_column :apartments, :onsite_daycare, :boolean
    add_column :apartments, :keyless_entry, :boolean
    add_column :apartments, :smart_thermostat, :boolean
    add_column :apartments, :spa, :boolean
    add_column :apartments, :concierge, :boolean
    add_column :apartments, :ocean_view, :boolean
    add_column :apartments, :personal_chef, :boolean
    add_column :apartments, :fiber_optic, :boolean
    add_column :apartments, :maid_service, :boolean
    add_column :apartments, :pizza_ovens, :boolean
    add_column :apartments, :hibachi_grill, :boolean
    add_column :apartments, :full_kitchen, :boolean
  end
end
