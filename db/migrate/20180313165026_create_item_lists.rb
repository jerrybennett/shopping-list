class CreateItemLists < ActiveRecord::Migration[5.1]
  def change
    create_table :item_lists do |t|
      t.integer :list_id
      t.integer :item_id
      t.integer :quantity

      t.timestamps
    end
  end
end
