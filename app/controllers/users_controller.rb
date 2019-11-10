class UsersController < ApplicationController
  def new
  end

  def show
    @user = User.find_by(id: params[:id])
    @posts = Post.where(user_id: session[:user_id])
    @user.profile.attached?
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  def update
  end

  private

  def user_params
      params.require(:user).permit(:username, :email, :password, :profile)
  end
end
