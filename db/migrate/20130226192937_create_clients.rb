class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :name1
      t.string :name2
      t.string :phone
      t.string :email
      t.string :comment
      t.integer :statusid

      t.timestamps
    end
  end
end
