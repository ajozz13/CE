class Manifest < ActiveRecord::Base
  has_many :manifestdetail, dependent: :destroy
end
