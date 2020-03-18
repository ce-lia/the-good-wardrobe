class AddColumntoUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :latitude, :float
    add_column :users, :longitute, :float
  end
end
