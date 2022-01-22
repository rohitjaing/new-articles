class Post < ApplicationRecord
	has_many :likes, dependent: :destroy
	belongs_to :user
	mount_uploader :image, FileUploader
	has_many :comments

   validates :title, presence: true
   validates :body, presence: true, length: { minimum: 5 }
end
