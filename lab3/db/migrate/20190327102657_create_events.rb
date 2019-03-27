class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :f_inicio
      t.references :ev_venue, foreign_key: true

      t.timestamps
    end
  end
end
