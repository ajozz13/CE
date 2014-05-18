class CreateTrackings < ActiveRecord::Migration
  def change
    create_table :trackings do |t|
      t.string :package_id
      t.timestamp :times
      t.integer :action_id

      t.timestamps
    end
  end
end
