class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.column :user_id, :bigint
      t.index :user_id
      t.column :item, :string
      t.column :title, :string
      t.column :notes, :text
      t.timestamps
    end
  end
end
