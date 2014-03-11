class ItemImage < ActiveRecord::Migration
  def up
  	add_column :images, :item_id, :integer
  end

  def down
  end
end
