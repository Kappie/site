class PostsController < ApplicationController
  before_filter :authorize, :except => [:index, :show]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def edit
  end

  def destroy
  end
end
