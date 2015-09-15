class AddPriceToItems < ActiveRecord::Migration
  def change
    add_column :items, :price, :integer, default: 2
  end
end
