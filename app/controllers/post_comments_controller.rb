class PostCommentsController < ApplicationController
  before_action :authenticate_user!
  # before_action :ensure_correct_user


  def create
    post = Post.find(params[:post_id])
    comment = current_user.post_comments.new(comment_params)
    comment.post_id = post.id
    comment.save
    redirect_to request.referer
  end

  def destroy
    PostComment.find_by(id: params[:id]).destroy
    redirect_to request.referer
  end

  private
  def comment_params
    params.require(:post_comment).permit(:comment)
  end

end
