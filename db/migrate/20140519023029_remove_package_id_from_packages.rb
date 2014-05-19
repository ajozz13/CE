class RemovePackageIdFromPackages < ActiveRecord::Migration
  def change
    remove_column :packages, :package_id, :int
  end
end
