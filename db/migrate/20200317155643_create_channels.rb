class CreateChannels < ActiveRecord::Migration[5.2]
  def change
    create_table :channels do |t|
      t.string :name
      t.string :adress
      t.float :latitude
      t.float :longitude
      t.integer :action

      t.timestamps
    end
  end
end
