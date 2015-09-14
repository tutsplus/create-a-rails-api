class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.references :table, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
