class Ad < ActiveRecord::Base
      attr_accessible :name, :images_attributes, :title, :link, :title_1, :title_2, :title_3, :text_1, :text_2, :text_3, :link_1, :link_2, :link_3, :colour_bg, :colour_bg_hover, :colour_link, :colour_link_hover, :colour_border, :colour_text
  
  has_many :images, :dependent=>:destroy
  
  accepts_nested_attributes_for :images
  
end
