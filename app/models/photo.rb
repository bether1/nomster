class Photo < ApplicationRecord
  mount_uploader :picture, PictureUploader
  serialize :picture, JSON

  belongs_to :user
  belongs_to :place
end


