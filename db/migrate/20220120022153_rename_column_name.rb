class RenameColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :imcs, :heigth, :height
  end
end
