class AddPackageIdToPackagedetails < ActiveRecord::Migration
  def change
    add_column :packagedetails, :package_id, :int
  end
end
