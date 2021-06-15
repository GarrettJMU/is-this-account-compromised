class AddIpToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :ip, :string
    add_index :users, :ip
  end
end
