class Image < ActiveRecord::Base
  attr_accessor :width, :height, :crop_x, :crop_y
  attr_accessible :position, :file, :ad_id, :item_id, :remote_file_url, :width, :height, :crop_x, :crop_y
  
  after_update :reprocess_image
  
  mount_uploader :file, FileUploader
  
  belongs_to :ad
  belongs_to :item
  
  def reprocess_image
    self.file.recreate_versions!
  end
  
end
