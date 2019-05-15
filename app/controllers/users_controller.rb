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
    user = User.create(user_params)
    # create skills here
    # UserSkills.create(user: user)
    render json: user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: @user
  end

  private

  def user_params
    params.permit(:name, :location, :instagram_handle, :follower_count, :email)
  end

end
