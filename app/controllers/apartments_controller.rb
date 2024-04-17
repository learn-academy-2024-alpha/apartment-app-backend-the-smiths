class ApartmentsController < ApplicationController
  def index
    apartments = Apartment.all
    render json: apartments
  end

  def create
    apartment = Apartment.create(apartment_params)
    if apartment.valid?
      render json: apartment
    else
      render json: apartment.errors, status: 422
    end
  end

  def update
    apartment = Apartment.find(params[:id])
    apartment.update(apartment_params)
    if apartment.valid?
      render json: apartment
    else
      render json: apartment.errors, status: 422
    end
  end

  def destroy
    apartment = Apartment.find(params[:id])
    apartment.destroy
  end

  private
  def apartment_params
    params.require(:apartment).permit(:street, :unit, :city, :state, :square_footage, :price, :bedrooms, :bathrooms, :pets, :image, :user_id, :smart_security_system, :rooftop_pool, :golf_course, :community_garden, :keyless_entry, :onsite_daycare, :smart_thermostat, :spa, :concierge, :ocean_view, :personal_chef, :fiber_optic, :maid_service, :pizza_ovens, :hibachi_grill, :full_kitchen, :name)
  end
end
