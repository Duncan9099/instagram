class UsersController < ApplicationController
  def new
  end

  def show
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  def update
  end

  private

  def user_params
    {username: params[:username], email: params[:email], password: params[:password], profile_picture: params[:profile_picture]}
  end
end
