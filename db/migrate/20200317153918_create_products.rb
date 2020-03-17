class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.text :description
      t.boolean :second_hand
      t.date :purchase_date
      t.date :discard_date
      t.string :title
      t.string :brand
      t.string :origin
      t.string :category
      t.integer :status, default: 1
      t.float :latitude
      t.float :longitude
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
