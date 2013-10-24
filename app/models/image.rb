class Image < ActiveRecord::Base
  attr_accessor :ad_id, :x, :y, :w, :h
  attr_accessible :position, :file, :ad_id, :x, :y, :w, :h
  
  belongs_to :ad
  
  mount_uploader :file, FileUploader
  
end
