class PostsController < ApplicationController
    def index
        @post = Post.first
    end
    
    def show
        @post = Post.find_by_id(params[:id])
    end
end