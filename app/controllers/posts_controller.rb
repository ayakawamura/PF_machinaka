class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index,:show]
  
  def new
    @post = Post.new
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
  end
  
  def edit
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end
  
  def timeline
  end
  
  private
  def post_params
    params.require(:post).permit(:body, :address, post_images_images:[] )
  end

end
