class UsersController < ApplicationController

  def show
    @user = User.find(id: params[:id])
    render json: @user
  end

  def index
    @users = User.all
    render json: @users
  end

  def create
    user = User.new(
      name: params[:name],
      username: params[:username],
      password: params[:password],
      location: params[:location],
      instagram_handle: params[:instagram_handle],
      follower_count: params[:follower_count],
      email: params[:email]
    )

    if user.save
      render json: user
    else
      render json: {errors: user.errors.full_messages}
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: @user
  end

  private

  def user_params
    params.permit(:name, :username, :password, :location, :instagram_handle, :follower_count, :email)
  end

end
