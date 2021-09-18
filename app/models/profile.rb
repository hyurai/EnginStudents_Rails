class Profile < ApplicationRecord
    belongs_to :user
    mount_uploader :front_img, ImageUploader
    mount_uploader :back_img, ImageUploader
    
    #validates :front_img,presence: true
    #validates :back_img,presence: true
end
