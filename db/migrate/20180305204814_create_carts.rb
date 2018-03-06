class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|

      t.timestamps
      t.integer :user_id
    end
    add_index :carts, :user_id
    add_foreign_key :carts, :users
  end
end
