class Address < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  def self.city(city)
    where("LOWER(city) LIKE :city",city: "%#{city.downcase}%")
  end
end
