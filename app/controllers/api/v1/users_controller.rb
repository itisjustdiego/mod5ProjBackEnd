class Api::V1::UsersController < ApplicationController
  def index
    render json: User.all
  end

  def show

  end

  def create
    # user = User.create(username: params[:username], password: params[:password], zipcode: params[:zipcode], main_character: params[:main_character], skill: params[:skill])
    user = User.create(user_params)
    render json:user
  end

  def edit

  end

  def update
    user = User.find(params[:id])
    user.update(username: params[:username], zipcode: params[:zipcode], main_character: params[:main_character], skill: params[:skill])
    user.save
    render json:user
  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :zipcode, :main_character, :skill)
  end

end
