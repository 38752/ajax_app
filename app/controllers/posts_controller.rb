class PostsController < ApplicationController

  def index
    @posts = Post.all.order(id: "DESC")
  end

  # def new
  # end

  def create
    post = Post.new(content: params[:content])
    if post.save
      render json:{ post: post }
    end
  end
end
