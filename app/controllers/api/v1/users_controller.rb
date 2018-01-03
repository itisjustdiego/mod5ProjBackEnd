class Api::V1::UsersController < ApplicationController
  def index
    render json: User.all
  end

  def create
   @user = User.new(user_params)
   if @user.valid?
     @user.save
     if @user && @user.authenticate(params[:user][:password])
       token = JWT.encode({user_id: @user.id}, ENV['secret_key_base'], ENV['ALGORITHM'])
       render json: {id: @user.id, username: @user.username, token: token}
     end
   else
     render json: {error: 'Error creating new user.'}
   end

  end

  def update
    user = User.find(params[:id])
    user.update(username: params[:username], zipcode: params[:zipcode], main_character: params[:main_character], skill: params[:skill])
    user.save
    render json:user
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :zipcode, :main_character, :skill, :lat, :lng)
  end

end
