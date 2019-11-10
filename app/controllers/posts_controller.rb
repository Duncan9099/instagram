class PostsController < ApplicationController
  def new
  end

  def create
    @post = Post.new(user_id: session[:user_id], content: post_params['content'], post_picture: post_params['post_picture'])
    @post.save
    # redirect_back(fallback_location: root_path)
    redirect_to '/posts'
  end

  def index
    @posts = Post.all
  end

  def show
  end

  private

  def post_params
    params.require(:post).permit(:post_picture, :content)
  end
end
