class AddressController < ApplicationController
  def new
    @address = @imageable.address.new
  end
  def create
    @address = @imageable.address.new(address_params)
    @imageable.save
  end
  private

  def address_params
    params.require(:address).permit(:location)
  end
end