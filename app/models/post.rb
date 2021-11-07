class Post < ApplicationRecord
  belongs_to :user
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :post_images, dependent: :destroy
  has_many :tag_relationships, dependent: :destroy
  
  validates :body, presence: true
end
