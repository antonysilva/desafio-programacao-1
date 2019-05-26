class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :description, null: false
      t.decimal :price, null: false, precision: 8, scale: 2, default: 0
      t.references :merchant, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end
