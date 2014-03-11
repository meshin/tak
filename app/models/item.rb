class Item < ActiveRecord::Base
  attr_accessible :title, :content, :link, :images_attributes, :ad_id

  has_many :images, :dependent=>:destroy
  belongs_to :ads

  accepts_nested_attributes_for :images

end
