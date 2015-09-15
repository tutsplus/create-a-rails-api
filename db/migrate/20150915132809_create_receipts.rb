class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.references :order, index: true, foreign_key: true
      t.string :payment_method

      t.timestamps null: false
    end
  end
end
