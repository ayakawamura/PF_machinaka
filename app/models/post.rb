class Post < ApplicationRecord
  belongs_to :user
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :tag_relationships, dependent: :destroy
  
  has_many :post_images, dependent: :destroy
  accepts_attachments_for :post_images, attachment: :image
  
  validates :body, presence: true
end
