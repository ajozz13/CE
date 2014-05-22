class AddTrackcodeIdToTracking < ActiveRecord::Migration
  def change
    add_column :trackings, :trackcode_id, :int
  end
end
