class AuthController < ApplicationController

  def login
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      render json: user
    else
      render json: {errors: "Incorrect Sign in"}
    end
  end

  def auto_login
    user_id = request.headers["Authorization"]
    user = User.find(user_id)
    render json: user
  end

end
