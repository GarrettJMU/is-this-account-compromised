class AddDefaultUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.timestamps
    end
  end
end
