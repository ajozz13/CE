class CreateManifestdetails < ActiveRecord::Migration
  def change
    create_table :manifestdetails do |t|
      t.integer :manifest_id
      t.string :tracking

      t.timestamps
    end
  end
end
