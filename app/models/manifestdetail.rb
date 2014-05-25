class Manifestdetail < ActiveRecord::Base
  belongs_to :manifest
  has_many :packages, through: :manifests
end
