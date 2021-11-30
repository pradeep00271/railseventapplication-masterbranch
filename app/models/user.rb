class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :events, dependent: :destroy
         has_many :comments, dependent: :destroy
         has_one :address, as: :imageable, :dependent => :destroy
         accepts_nested_attributes_for :address,:allow_destroy => true
end
