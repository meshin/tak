class AdTexts < ActiveRecord::Migration
  def up
    add_column :ads, :title, :string
    add_column :ads, :link, :string
    add_column :ads, :title_1, :string
    add_column :ads, :title_2, :string
    add_column :ads, :title_3, :string
    add_column :ads, :text_1, :string
    add_column :ads, :text_2, :string
    add_column :ads, :text_3, :string
    add_column :ads, :link_1, :string
    add_column :ads, :link_2, :string
    add_column :ads, :link_3, :string
    add_column :ads, :colour_bg, :string
    add_column :ads, :colour_bg_hover, :string
    add_column :ads, :colour_link, :string
    add_column :ads, :colour_link_hover, :string
    add_column :ads, :colour_border, :string
    add_column :ads, :colour_text, :string
  end

  def down
  end
end
