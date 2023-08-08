class UpdateUsersTable < ActiveRecord::Migration[7.0]
  def change
    change_table :users do |t|
      t.column :username, :string
      t.column :password, :string
    end
  end
end
