class Profile < ApplicationRecord
    belongs_to :user
    mount_uploader :front_img, ImageUploader
    mount_uploader :back_img, ImageUploader
end
