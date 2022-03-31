class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :serial_number
      t.string :unit
      t.string :lot_number
      t.date :expiration_date
      t.string :product_code
      t.string :product_title
      t.string :status
      t.timestamp :status_update_timestamp

      t.timestamps
    end
  end
end
