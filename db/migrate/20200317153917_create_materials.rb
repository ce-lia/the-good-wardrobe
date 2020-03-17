class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :name
      t.boolean :organic, default: false
      t.boolean :recycled, default: false

      t.timestamps
    end
  end
end
