class CommentsController < ApplicationController
  before_filter :authorize, :except => :create

  def create
    @post = Post.find(params[:post_id])
    @post.comments.create(comment_params)
    redirect_to @post
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to @post
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end
end
