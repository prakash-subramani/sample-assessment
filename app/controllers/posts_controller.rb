class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    render :new, formats: :turbo_stream
  end

  def create
    Post.create(post_params)
    @posts = Post.all
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
