class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.integer :cat_id
      t.datetime :arrived_time
      t.integer :subtotal
      t.integer :total
      t.references :order_status, foreign_key: true

      t.timestamps
    end
  end
end
