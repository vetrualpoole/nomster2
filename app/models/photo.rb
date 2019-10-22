class Photo < ApplicationRecord
    mount_uploader :picture, PictureUploader
    belongs_to :user, dependent:
  :destroy
    belongs_to :place, dependent:
:destroy

 
end
