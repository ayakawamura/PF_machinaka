class SearchesController < ApplicationController
  def user_search
    # userモデルでlooks定義
    @users = User.looks(params[:word])
    @word = params[:word]
  end

  def tag_search
    tag = Tag.where(name: params[:word])
    tag_relationship = TagRelationship.where(tag_id: tag)
    @posts = Post.where(id: tag_relationship.post.id)
    @word = params[:word]

  end
end
