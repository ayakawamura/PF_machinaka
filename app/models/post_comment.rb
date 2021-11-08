class PostComment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  
  validates :comment, presense: true
end
