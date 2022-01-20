class AddHeigthWeigthToImc < ActiveRecord::Migration[6.1]
  def change
    add_column :imcs, :height, :float
    add_column :imcs, :weight, :float
  end
end
