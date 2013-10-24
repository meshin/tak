class Image < ActiveRecord::Base
  attr_accessor :width, :height
  attr_accessible :position, :file, :ad_id, :remote_file_url, :width, :height
  
  after_update :reprocess_image
  
  mount_uploader :file, FileUploader
  
  belongs_to :ad
  
  def reprocess_image
    self.file.recreate_versions!
  end
  
end
