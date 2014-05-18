class CreatePackagedetails < ActiveRecord::Migration
  def change
    create_table :packagedetails do |t|
      t.string :tracking
      t.integer :length
      t.integer :width
      t.integer :height
      t.decimal :piece_weight

      t.timestamps
    end
  end
end
