class RemoveActionIdFromTrackings < ActiveRecord::Migration
  def change
    remove_column :trackings, :action_id, :int
  end
end
