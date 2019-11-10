class UsersController < ApplicationController
  def new
  end

  def show
    @user = User.find_by(id: params[:id])
    @user.profile.attached?
  end

  def create
    @user = User.new(user_params)
    # @user.profile.attach(params[:profile])
    @user.save
  end

  def update
  end

  private

  def user_params
      params.require(:user).permit(:username, :email, :password, :profile_picture, :profile)
  end
end
