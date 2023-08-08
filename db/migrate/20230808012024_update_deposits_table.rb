class UpdateDepositsTable < ActiveRecord::Migration[7.0]
  def change
    change_table :deposits do |t|
      t.column :item_id, :bigint
      t.index :item_id
      t.column :user_id, :bigint
      t.index :user_id
      t.column :notes, :text
    end
  end
end
