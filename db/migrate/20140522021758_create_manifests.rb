class CreateManifests < ActiveRecord::Migration
  def change
    create_table :manifests do |t|
      t.string :origin
      t.string :destination
      t.string :notes
      t.decimal :total_weight

      t.timestamps
    end
  end
end
