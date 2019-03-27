class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :name
      t.string :apellido
      t.string :mail
      t.string :phone
      t.string :password
      t.string :address

      t.timestamps
    end
  end
end
