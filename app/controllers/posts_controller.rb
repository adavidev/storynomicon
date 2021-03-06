class PostsController < ApplicationController

  respond_to :html, :json

  def index
    @posts = Post.all
    respond_with @posts
  end

  def show
    @post = Post.find_by_id(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.save
    redirect_to @post
  end
end
