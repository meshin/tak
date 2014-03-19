class ItemPhoto < ActiveRecord::Migration
  def up
  	add_column :items, :file, :string
  end

  def down
  end
end
