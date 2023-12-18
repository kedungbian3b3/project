class CreateParkingfees < ActiveRecord::Migration[7.0]
  def change
    create_table :parkingfees do |t|
      t.text :numtime
      t.integer :money

      t.timestamps
    end
  end
end
