class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.integer :capacity
	t.belongs_to :event
      t.timestamps
    end
  end
end
