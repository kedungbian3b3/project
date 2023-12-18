class CreateParkingstatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :parkingstatuses do |t|
      t.references :staff, null: false, foreign_key: true
      t.boolean :available
      t.integer :slotid
      t.references :parkingfee, null: false, foreign_key: true
      t.references :paymentmethod, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.text :car
      t.text :numberplate
      t.datetime :date

      t.timestamps
    end
  end
end
