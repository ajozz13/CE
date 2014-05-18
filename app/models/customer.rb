class Customer < ActiveRecord::Base
  has_many :packages, dependent: :destroy
  #Validations
  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :phone, presence: true
end
