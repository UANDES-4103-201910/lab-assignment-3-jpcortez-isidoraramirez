class CreateTOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :t_orders do |t|
      t.integer :price

      t.timestamps
    end
  end
end