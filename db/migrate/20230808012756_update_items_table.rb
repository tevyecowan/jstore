class UpdateItemsTable < ActiveRecord::Migration[7.0]
  def change
    change_table :items do |t|
      t.column :deposit_id, :bigint
      t.index :deposit_id
      t.column :user_id, :bigint
      t.index :user_id
      t.column :item, :string
    end
  end
end
