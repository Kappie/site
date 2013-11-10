class PostsController < ApplicationController
  before_filter :authorize, :except => [:index, :show]

  def index
    @posts = Post.order("created_at DESC").paginate(:page => params[:page],
      :per_page => 5)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to @post
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to @post
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to blog_path
  end

  private 

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
