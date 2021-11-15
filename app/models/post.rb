class Post < ApplicationRecord
  belongs_to :user
  has_many :post_comments, dependent: :destroy

  has_many :favorites, dependent: :destroy
  has_many :favorited_users, through: :favorites, source: :user

  has_many :tag_relationships, dependent: :destroy
  has_many :tags, through: :tag_relationships, source: :tag

  has_many :post_images, dependent: :destroy
  accepts_attachments_for :post_images, attachment: :image

  geocoded_by :address
  after_validation :geocode

  validates :body, presence: true

  # いいね確認メソッド
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  # タグ保存・更新メソッド
  def save_tags(post_tag)
    # タグがあれば名前を全て取得
    current_tags = self.tags.pluck(:name) unless self.tags.nil?
    old_tags = current_tags - post_tag
    new_tags = post_tag - current_tags

    #古いタグを削除
    old_tags.each do |old_tag|
      self.tags.delete Tag.find_by(name: old_tag)
    end

    #新しいタグを追加
    new_tags.each do |new_tag|
      # 指定した値があれば取得、なければ作成する
      add_tag = Tag.find_or_create_by(name: new_tag)
      # 新しいタグを追加する
      self.tags << add_tag
    end
  end

  # 投稿検索
  def self.looks(word)
    if word != ""
      Post.where("body LIKE(?) OR address LIKE(?)","%#{word}%","%#{word}%")
    else
      Post.all
    end
  end

end
