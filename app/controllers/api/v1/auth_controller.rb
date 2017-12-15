class Api::V1::AuthController < ApplicationController

  def show
    if current_user
      render json: {
        id: current_user.id,
        user_name: current_user.user_name
      }
    end
  end

  def create
    #
    user = User.find_by(user_name: params[:user_name])
    if user && user.authenticate(params[:password])
      payload = {user_id: user.id}
      token = issue_token(payload)
      render json: { id: user.id, user_name: user.user_name, jwt: token }
    else
      render json: { error: "kennith"}
    end
  end

end
