class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :start_date
	t.belongs_to :ticket

      t.timestamps
    end
  end
end
