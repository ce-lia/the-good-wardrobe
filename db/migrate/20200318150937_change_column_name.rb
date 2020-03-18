class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :proportions, :pourcentage, :percentage
  end
end
