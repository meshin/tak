class Ad < ActiveRecord::Base
  attr_accessible :name, :images_attributes
  
  has_many :images, :dependent=>:destroy
  
  accepts_nested_attributes_for :images
  
end
