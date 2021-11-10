class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index,:show]
  before_action :ensure_correct_user,only:[:edit,:update]

  def new
    @post = Post.new
    @post.post_images.build
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to post_path(@post), notice: '投稿しました'
    else
      render :new
    end
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.user
    @post_comment = PostComment.new
  end

  def edit
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def timeline
    @users = current_user.followings
    @posts = Post.where(user_id: @users)
  end

  private
  def post_params
    params.require(:post).permit(:body, :address, post_images_images:[] )
  end

  def ensure_correct_user
    @post = Post.find(params[:id])
    unless @post.user_id == current_user.id
    redirect_to request.referer
    end
  end
end
