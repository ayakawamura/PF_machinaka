class SearchesController < ApplicationController
  def user_search
    # userモデルでlooks定義
    @users = User.looks(params[:word])
    @word = params[:word]
  end
  
  def post_search
    @posts = Post.looks(params[:word])
    @word = params[:word]
    @tags = Tag.all
  end

  def tag_search
    @tags = Tag.all
    @tag=Tag.find(params[:tag_id])
    @posts=@tag.posts.page(params[:page]).per(10)
  end
end
