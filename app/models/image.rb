class Image < ApplicationRecord
  has_many :user_images
  has_many :users, through: :user_images

  after_save :set_orientation

  def set_orientation
    # determine;s the orientation
    # self.update({orientation: "landscape"})
  end
  
end
