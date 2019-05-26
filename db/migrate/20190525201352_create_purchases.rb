class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.references :item, null: false, foreign_key: true
      t.references :purchaser, null: false, foreign_key: true
      t.integer    :quantity, null: false, default: 0

      t.timestamps null: false
    end
  end
end
