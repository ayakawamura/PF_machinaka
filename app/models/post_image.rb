class PostImage < ApplicationRecord
  belongs_to :post

  # image_idは投稿後に作成されるのでvalidatesしない
  attachment :image
end
