class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.column :username, :string
      t.column :password, :string
      t.timestamps
    end
  end
end
