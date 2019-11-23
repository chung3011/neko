class CreateFoodBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :food_bookings do |t|
      t.references :food, foreign_key: true
      t.references :order, foreign_key: true
      t.integer :unit_price
      t.integer :quantity
      t.integer :total_price

      t.timestamps
    end
  end
end
