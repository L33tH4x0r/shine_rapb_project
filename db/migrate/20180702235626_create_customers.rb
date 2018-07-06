class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :username, null: false
      t.index :username, unique: true
      t.index :email, unique: true

      t.timestamps null: false
    end
  end
end
