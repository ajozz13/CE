class Package < ActiveRecord::Base
  belongs_to :customer
  has_many :trackings, dependent: :destroy
  has_many :packagedetails, dependent: :destroy
end
