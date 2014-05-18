class CreateTrackcodes < ActiveRecord::Migration
  def change
    create_table :trackcodes do |t|
      t.string :description

      t.timestamps
    end
  end
end
