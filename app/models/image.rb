class Image < ActiveRecord::Base
  attr_accessible :position, :file, :ad_id
  
  belongs_to :ad
  
  mount_uploader :file, FileUploader
  
end
