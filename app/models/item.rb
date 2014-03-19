class Item < ActiveRecord::Base
  attr_accessor :width, :height, :crop_x, :crop_y
  attr_accessible :title, :content, :link, :ad_id, :file, :width, :height, :crop_x, :crop_y

  belongs_to :ad

  after_update :reprocess_image
  
  mount_uploader :file, FileUploader
  
  
  def reprocess_image
    self.file.recreate_versions!
  end

end
