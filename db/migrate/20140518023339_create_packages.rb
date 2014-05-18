class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :tracking
      t.integer :customer_id
      t.decimal :weight
      t.decimal :value
      t.string :sender_name
      t.string :sender_address
      t.string :sender_city
      t.string :sender_state
      t.string :sender_country
      t.string :sender_phone
      t.string :sender_email

      t.timestamps
    end
  end
end
