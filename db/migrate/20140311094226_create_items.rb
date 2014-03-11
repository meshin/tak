class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :title
      t.string :content
      t.string :link
      t.integer :ad_id
      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
