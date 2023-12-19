class Post < ApplicationRecord
    belongs_to :user

    mount_uploader :image, ImageUploader

    has_many :comments, dependent: :destroy

    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user

    has_many :post_tag_relations, dependent: :destroy
  
    has_many :tags, through: :post_tag_relations, dependent: :destroy

    mount_uploader :video, VideoUploader

    
end
