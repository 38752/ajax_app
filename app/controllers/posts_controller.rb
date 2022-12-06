class PostsController < ApplicationController

  def index
    @posts = Post.all.order(id: "DESC")
  end

  # def new
  # end

  def create
    post = Post.create(content: params[:content])
    redirect_to action: :index  # 追記する
    render json:{ post: post }
  end
end
