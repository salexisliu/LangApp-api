class Api::V1::UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :unprocessable_entity
    end
  end

  def index
    @users = User.all
    render json: @users
  end

  private
  def user_params
    params.require(:user).permit(:username, :name, :password, :bio, :avatar)
  end
end