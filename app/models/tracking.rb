class Tracking < ActiveRecord::Base
  belongs_to :package
  has_one :trackcode
end
