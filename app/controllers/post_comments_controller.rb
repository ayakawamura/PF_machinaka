class PostCommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    comment = current_user.post_comments.new(comment_params)
    comment.post_id = @post.id
    comment.save
    @post_comment = PostComment.new

  end

  def destroy
    @post = Post.find(params[:post_id])
    post_comment = PostComment.find_by(id: params[:id])
    if post_comment.user_id == current_user.id
      post_comment.destroy
    end
    @post_comment = PostComment.new
  end

  private
  def comment_params
    params.require(:post_comment).permit(:comment)
  end

end
