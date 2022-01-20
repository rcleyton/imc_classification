class CreateImcs < ActiveRecord::Migration[6.1]
  def change
    create_table :imcs do |t|
      t.float :imc
      t.string :classification
      t.string :obesity

      t.timestamps
    end
  end
end
