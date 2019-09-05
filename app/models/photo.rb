class Photo < ApplicationRecord
    mount_uploader :picture, PictureUploader
    belongs_to :user
    belongs_to :place

    t.text :caption
    t.integer :place_id
end
