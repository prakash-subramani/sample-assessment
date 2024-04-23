class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @tags = Tag.all
    @post.tags.build
    render :new, formats: :turbo_stream
  end

  def create
    @post = Post.new(post_params)

    @posts = Post.all

    tags_params = post_params[:tags_attributes]['0']
    if tags_params && tags_params[:name].present?
      @post.tags << Tag.find_or_create_by(name: tags_params[:name])
    end
    @post.save
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, tags_attributes: [:id, :name])
  end
end
